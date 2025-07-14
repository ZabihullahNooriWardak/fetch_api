class Item {
  final int id;
  final String title;
  final String description;
  final String imageUrl;

  Item({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      title: json['title'],
      description: json['body'],
      imageUrl:
          'https://picsum.photos/id/${json['id'] + 10}/200/200', // Dummy image
    );
  }
}
