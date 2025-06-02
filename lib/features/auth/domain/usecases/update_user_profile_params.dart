import 'package:equatable/equatable.dart';

class UpdateUserProfileParams extends Equatable {
  final String? username;
  final String? avatarUrl;

  const UpdateUserProfileParams({this.username, this.avatarUrl});

  @override
  List<Object?> get props => [username, avatarUrl];
}
