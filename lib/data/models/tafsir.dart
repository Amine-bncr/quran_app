/// Represents a Tafsir (exegesis/commentary) for an Ayah
class Tafsir {
  final String id;
  final String name;
  final String authorName;
  final String language;
  final String text;
  final int ayahNumber;
  final int surahNumber;

  const Tafsir({
    required this.id,
    required this.name,
    required this.authorName,
    required this.language,
    required this.text,
    required this.ayahNumber,
    required this.surahNumber,
  });

  /// Create Tafsir from JSON
  factory Tafsir.fromJson(Map<String, dynamic> json) {
    return Tafsir(
      id: json['id'] as String,
      name: json['name'] as String,
      authorName: json['authorName'] as String,
      language: json['language'] as String,
      text: json['text'] as String,
      ayahNumber: json['ayahNumber'] as int,
      surahNumber: json['surahNumber'] as int,
    );
  }

  /// Convert Tafsir to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'authorName': authorName,
      'language': language,
      'text': text,
      'ayahNumber': ayahNumber,
      'surahNumber': surahNumber,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Tafsir &&
        other.id == id &&
        other.name == name &&
        other.authorName == authorName &&
        other.language == language &&
        other.text == text &&
        other.ayahNumber == ayahNumber &&
        other.surahNumber == surahNumber;
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      name,
      authorName,
      language,
      text,
      ayahNumber,
      surahNumber,
    );
  }

  @override
  String toString() {
    return 'Tafsir(id: $id, name: $name, authorName: $authorName, '
        'surahNumber: $surahNumber, ayahNumber: $ayahNumber)';
  }

  /// Create a copy with updated fields
  Tafsir copyWith({
    String? id,
    String? name,
    String? authorName,
    String? language,
    String? text,
    int? ayahNumber,
    int? surahNumber,
  }) {
    return Tafsir(
      id: id ?? this.id,
      name: name ?? this.name,
      authorName: authorName ?? this.authorName,
      language: language ?? this.language,
      text: text ?? this.text,
      ayahNumber: ayahNumber ?? this.ayahNumber,
      surahNumber: surahNumber ?? this.surahNumber,
    );
  }
}
