import 'dart:async';
import 'dart:convert';

import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:meepshoptest/features/chat/data/models/message_model.dart';

// Data class for 'updateConversationList' event payload.
class UpdateConversationListData {
  final String conversationId;
  final MessageModel lastMessage;

  UpdateConversationListData({
    required this.conversationId,
    required this.lastMessage,
  });

  factory UpdateConversationListData.fromJson(Map<String, dynamic> json) {
    return UpdateConversationListData(
      conversationId: json['conversationId'] as String,
      lastMessage: MessageModel.fromJson(
        json['lastMessage'] as Map<String, dynamic>,
      ),
    );
  }
}

// Data class for 'userTyping' event payload.
class UserTypingData {
  final String conversationId;
  final String userId;
  final String username;
  final bool isTyping;

  UserTypingData({
    required this.conversationId,
    required this.userId,
    required this.username,
    required this.isTyping,
  });

  factory UserTypingData.fromJson(Map<String, dynamic> json) {
    return UserTypingData(
      conversationId: json['conversationId'] as String,
      userId: json['userId'] as String,
      username: json['username'] as String,
      isTyping: json['isTyping'] as bool,
    );
  }
}

class ChatWebSocketService {
  final String _serverUrl = 'wss://meeptestapi.zhixu-li.com:443';
  IO.Socket? _socket;
  StreamController<MessageModel>? _messageStreamController;
  StreamController<String>? _connectedMessageStreamController;
  StreamController<UpdateConversationListData>?
  _updateConversationListStreamController;
  StreamController<UserTypingData>? _userTypingStreamController;
  StreamController<String>? _serverErrorStreamController;

  String? _currentConversationId;

  Stream<MessageModel>? get messages => _messageStreamController?.stream;
  Stream<String>? get connectedMessage =>
      _connectedMessageStreamController?.stream;
  Stream<UpdateConversationListData>? get updateConversationList =>
      _updateConversationListStreamController?.stream;
  Stream<UserTypingData>? get userTyping => _userTypingStreamController?.stream;
  Stream<String>? get serverError => _serverErrorStreamController?.stream;

  bool get isConnected => _socket?.connected ?? false;

  ChatWebSocketService() {
    _messageStreamController = StreamController<MessageModel>.broadcast();
    _connectedMessageStreamController = StreamController<String>.broadcast();
    _updateConversationListStreamController =
        StreamController<UpdateConversationListData>.broadcast();
    _userTypingStreamController = StreamController<UserTypingData>.broadcast();
    _serverErrorStreamController = StreamController<String>.broadcast();
  }

  Future<bool> connect(String userId) async {
    if (isConnected && _socket != null && _socket!.connected) {
      print('[ChatWebSocketService] Socket.IO already connected');
      return true;
    }

    // If _socket exists but isn't connected, or if it's a new connection attempt,
    // ensure any old socket is disposed of.
    if (_socket != null) {
      await disconnect(); // Disconnect and nullify the old socket first
    }

    print(
      '[ChatWebSocketService] Attempting to connect to Socket.IO server: $_serverUrl for user $userId',
    );

    final Completer<bool> connectionCompleter = Completer<bool>();

    try {
      _socket = IO.io(
        _serverUrl,
        IO.OptionBuilder()
            .setTransports(['websocket'])
            .disableAutoConnect() // Crucial: we call connect() manually
            .setQuery({'userId': userId})
            .build(),
      );

      _socket!.onConnect((_) {
        print('[ChatWebSocketService] Socket.IO connected: ${_socket?.id}');
        _connectedMessageStreamController?.add(
          'Socket.IO connected successfully',
        );
        if (!connectionCompleter.isCompleted) {
          connectionCompleter.complete(true);
        }
        // Setup other event listeners AFTER successful connection
        _setupEventListeners();
      });

      _socket!.onConnectError((data) {
        print('[ChatWebSocketService] Socket.IO connection error: $data');
        _serverErrorStreamController?.add('Socket.IO connection error: $data');
        if (!connectionCompleter.isCompleted) {
          connectionCompleter.complete(false);
        }
      });

      _socket!.onDisconnect((_) {
        print('[ChatWebSocketService] Socket.IO disconnected.');
        // Optionally, if disconnect happens before completer is done (e.g. immediate error after connect() call)
        // if (!connectionCompleter.isCompleted) {
        //   connectionCompleter.complete(false);
        // }
      });

      _socket!.onError((data) {
        print('[ChatWebSocketService] Socket.IO error: $data');
        _serverErrorStreamController?.add('Socket.IO generic error: $data');
        if (!connectionCompleter.isCompleted) {
          connectionCompleter.complete(false);
        }
      });

      _socket!.connect(); // Manually initiate connection
    } catch (e) {
      print('[ChatWebSocketService] Socket.IO client setup error: $e');
      _serverErrorStreamController?.add('Socket.IO client setup error: $e');
      if (!connectionCompleter.isCompleted) {
        connectionCompleter.complete(false);
      }
    }
    return connectionCompleter.future;
  }

  void _setupEventListeners() {
    if (_socket == null) return;

    _socket!.on('newMessage', (data) {
      try {
        // Log the raw data received from the newMessage event
        print(
          '[ChatWebSocketService] Received raw newMessage data: ${jsonEncode(data)}',
        );

        final message = MessageModel.fromJson(data as Map<String, dynamic>);
        _messageStreamController?.add(message);
      } catch (e) {
        print(
          '[ChatWebSocketService] Error parsing newMessage: $e, data: $data',
        );
      }
    });

    _socket!.on('updateConversationList', (data) {
      try {
        final updateData = UpdateConversationListData.fromJson(
          data as Map<String, dynamic>,
        );
        _updateConversationListStreamController?.add(updateData);
      } catch (e) {
        print(
          '[ChatWebSocketService] Error parsing updateConversationList: $e, data: $data',
        );
      }
    });

    _socket!.on('userTyping', (data) {
      try {
        final typingData = UserTypingData.fromJson(
          data as Map<String, dynamic>,
        );
        _userTypingStreamController?.add(typingData);
      } catch (e) {
        print(
          '[ChatWebSocketService] Error parsing userTyping: $e, data: $data',
        );
      }
    });

    _socket!.on('error', (data) {
      // Generic server-pushed errors
      try {
        if (data is Map<String, dynamic> && data.containsKey('message')) {
          _serverErrorStreamController?.add(data['message'] as String);
        } else if (data is String) {
          _serverErrorStreamController?.add(data);
        } else {
          print(
            '[ChatWebSocketService] Received unhandled server error format: $data',
          );
          _serverErrorStreamController?.add('Received unhandled server error');
        }
      } catch (e) {
        print(
          '[ChatWebSocketService] Error parsing server error event: $e, data: $data',
        );
        _serverErrorStreamController?.add('Error parsing server error event');
      }
    });

    _socket!.on('joinedConversation', (data) {
      print(
        '[ChatWebSocketService] Flutter received joinedConversation: $data. Current conversation ID: $_currentConversationId',
      );
    });
    _socket!.on('joinConversationError', (data) {
      print(
        '[ChatWebSocketService] Flutter received joinConversationError: $data',
      );
      _serverErrorStreamController?.add(
        'Failed to join conversation: ${data is Map ? data['message'] : data}',
      );
    });
  }

  void joinConversation(String conversationId) {
    if (!isConnected) {
      print(
        '[ChatWebSocketService] Cannot join conversation: Socket.IO not connected.',
      );
      _serverErrorStreamController?.add(
        'Cannot join conversation: Socket.IO not connected.',
      );
      return;
    }
    _currentConversationId = conversationId;
    print(
      '[ChatWebSocketService] Socket.IO emitting joinConversation with ID: $conversationId',
    );
    _socket!.emit('joinConversation', conversationId);
  }

  void leaveConversation(String conversationId) {
    if (!isConnected) {
      print(
        '[ChatWebSocketService] Cannot leave conversation: Socket.IO not connected.',
      );
      _serverErrorStreamController?.add(
        'Cannot leave conversation: Socket.IO not connected.',
      );
      return;
    }
    if (_currentConversationId == conversationId) {
      _currentConversationId = null;
    }
    final eventData = {'conversationId': conversationId};
    print(
      '[ChatWebSocketService] Socket.IO emitting leaveConversation: $eventData',
    );
    _socket!.emit('leaveConversation', eventData);
  }

  void sendMessage(
    String conversationId,
    String type,
    String content,
    Function(Map<String, dynamic>) callback,
  ) {
    if (!isConnected) {
      print(
        '[ChatWebSocketService] Cannot send message: Socket.IO not connected.',
      );
      callback({'status': 'error', 'message': 'Socket.IO not connected.'});
      return;
    }
    final eventData = {
      'conversationId': conversationId,
      'type': type,
      'content': content,
    };
    print('[ChatWebSocketService] Socket.IO emitting sendMessage: $eventData');
    _socket!.emitWithAck(
      'sendMessage',
      eventData,
      ack: (response) {
        print('[ChatWebSocketService] sendMessage ack response: $response');
        if (response is Map<String, dynamic>) {
          callback(response);
        } else {
          callback({
            'status': 'error',
            'message': 'Invalid response format from server.',
          });
        }
      },
    );
  }

  void sendTypingStatus(String conversationId, bool isTyping) {
    if (!isConnected) {
      print(
        '[ChatWebSocketService] Cannot send typing status: Socket.IO not connected.',
      );
      return;
    }
    final eventData = {'conversationId': conversationId, 'isTyping': isTyping};
    print('[ChatWebSocketService] Socket.IO emitting typing: $eventData');
    _socket!.emit('typing', eventData);
  }

  Future<void> disconnect() async {
    if (_socket == null) {
      print(
        '[ChatWebSocketService] Socket.IO already disconnected or never initialized.',
      );
      return;
    }
    print('[ChatWebSocketService] Disconnecting Socket.IO...');
    if (_currentConversationId != null) {
      // Attempt to leave conversation only if socket is still considered connected by client logic
      if (isConnected) {
        leaveConversation(_currentConversationId!);
      }
    }
    _socket!.dispose();
    _socket = null;
    _currentConversationId = null;
    print('[ChatWebSocketService] Socket.IO disconnected and disposed.');
  }

  void dispose() {
    print(
      '[ChatWebSocketService] Disposing ChatWebSocketService (Socket.IO)...',
    );
    disconnect();
    _messageStreamController?.close();
    _connectedMessageStreamController?.close();
    _updateConversationListStreamController?.close();
    _userTypingStreamController?.close();
    _serverErrorStreamController?.close();
  }
}
