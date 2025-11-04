class TukangModel {
  final int id;
  final String name;
  final String category;
  final String imageUrl;
  final double rating;
  final String description;

  TukangModel({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.description,
  });

  factory TukangModel.fromJson(Map<String, dynamic> json) {
    return TukangModel(
      id: json['id'],
      name: json['name'],
      category: json['category'] ?? 'Umum',
      imageUrl: json['imageUrl'] ?? '',
      rating: (json['rating'] ?? 0).toDouble(),
      description: json['description'] ?? '',
    );
  }
}
