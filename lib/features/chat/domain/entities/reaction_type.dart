enum ReactionType { like, love, laugh, unknown }

extension ReactionTypeUtils on ReactionType {
  static ReactionType fromString(String type) {
    switch (type.toLowerCase()) {
      case 'like':
        return ReactionType.like;
      case 'love':
        return ReactionType.love;
      case 'laugh':
        return ReactionType.laugh;
      default:
        return ReactionType.unknown;
    }
  }
}

extension ReactionTypeExtension on ReactionType {
  String get emoji {
    switch (this) {
      case ReactionType.like:
        return '👍';
      case ReactionType.love:
        return '❤️';
      case ReactionType.laugh:
        return '😂';
      case ReactionType.unknown:
        return '';
    }
  }
}
