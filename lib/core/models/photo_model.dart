class PhotoModel {
  final String id;
  final String imageUrl;
  final String title;
  final String description;
  final String uploaderName;
  final String uploaderId;
  final DateTime uploadDate;
  final int likeCount;
  final bool isLiked;
  final List<String> tags;
  final List<CommentModel>? comments;

  PhotoModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.uploaderName,
    required this.uploaderId,
    required this.uploadDate,
    required this.likeCount,
    required this.isLiked,
    required this.tags,
    this.comments,
  });

  // Create a copy of the photo with updated values
  PhotoModel copyWith({
    String? id,
    String? imageUrl,
    String? title,
    String? description,
    String? uploaderName,
    String? uploaderId,
    DateTime? uploadDate,
    int? likeCount,
    bool? isLiked,
    List<String>? tags,
    List<CommentModel>? comments,
  }) {
    return PhotoModel(
      id: id ?? this.id,
      imageUrl: imageUrl ?? this.imageUrl,
      title: title ?? this.title,
      description: description ?? this.description,
      uploaderName: uploaderName ?? this.uploaderName,
      uploaderId: uploaderId ?? this.uploaderId,
      uploadDate: uploadDate ?? this.uploadDate,
      likeCount: likeCount ?? this.likeCount,
      isLiked: isLiked ?? this.isLiked,
      tags: tags ?? this.tags,
      comments: comments ?? this.comments,
    );
  }

  // Toggle the like status
  PhotoModel toggleLike() {
    return copyWith(
      isLiked: !isLiked,
      likeCount: isLiked ? likeCount - 1 : likeCount + 1,
    );
  }

  // Create a sample photo for testing
  static PhotoModel sample({int index = 0}) {
    return PhotoModel(
      id: 'photo_$index',
      imageUrl: 'https://picsum.photos/seed/$index/500/500',
      title: 'Sample Photo $index',
      description: 'This is a sample photo description for photo $index',
      uploaderName: 'User $index',
      uploaderId: 'user_$index',
      uploadDate: DateTime.now().subtract(Duration(days: index)),
      likeCount: index * 10,
      isLiked: index % 2 == 0,
      tags: ['sample', 'photo', 'tag$index'],
    );
  }

  // Generate a list of sample photos for testing
  static List<PhotoModel> sampleList(int count) {
    return List.generate(count, (index) => sample(index: index));
  }
}

class CommentModel {
  final String id;
  final String userId;
  final String userName;
  final String userAvatar;
  final String content;
  final DateTime timestamp;

  CommentModel({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userAvatar,
    required this.content,
    required this.timestamp,
  });

  // Create a sample comment for testing
  static CommentModel sample({int index = 0}) {
    return CommentModel(
      id: 'comment_$index',
      userId: 'user_$index',
      userName: 'User $index',
      userAvatar: 'https://picsum.photos/seed/avatar$index/100/100',
      content: 'This is a sample comment $index',
      timestamp: DateTime.now().subtract(Duration(hours: index)),
    );
  }

  // Generate a list of sample comments for testing
  static List<CommentModel> sampleList(int count) {
    return List.generate(count, (index) => sample(index: index));
  }
}