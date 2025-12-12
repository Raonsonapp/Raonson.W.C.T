class PostModel {
  final String id;
  final String userId;
  final String imageUrl;
  final String caption;
  final int likes;
  final DateTime createdAt;

  PostModel({
    required this.id,
    required this.userId,
    required this.imageUrl,
    required this.caption,
    required this.likes,
    required this.createdAt,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(
      id: json['id'] ?? '',
      userId: json['userId'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      caption: json['caption'] ?? '',
      likes: json['likes'] ?? 0,
      createdAt: (json['createdAt'] != null)
          ? DateTime.parse(json['createdAt'])
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "imageUrl": imageUrl,
        "caption": caption,
        "likes": likes,
        "createdAt": createdAt.toIso8601String(),
      };
}
