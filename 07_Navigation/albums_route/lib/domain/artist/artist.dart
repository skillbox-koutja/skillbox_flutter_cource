class Artist {
  final String name;
  final String link;
  final String about;

  const Artist({required this.name, required this.link, required this.about});

  factory Artist.fromMap(Map<String, dynamic> data) {
    return Artist(
      name: data['name'] ?? '',
      link: data['link'] ?? '',
      about: data['about'] ?? '',
    );
  }

  factory Artist.unknown() {
    return Artist(
      name: 'Неизвестный испольнитель',
      link: '-unknown-',
      about: 'Неизвестный исполнитель. Попробуйте выбрать другого',
    );
  }
}
