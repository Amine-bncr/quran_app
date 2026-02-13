/// Represents a translation of Quranic text
class Translation {
  final String id;
  final String language;
  final String languageCode;
  final String translatorName;
  final String text;

  const Translation({
    required this.id,
    required this.language,
    required this.languageCode,
    required this.translatorName,
    required this.text,
  });

  /// Create Translation from JSON
  factory Translation.fromJson(Map<String, dynamic> json) {
    return Translation(
      id: json['id'] as String,
      language: json['language'] as String,
      languageCode: json['languageCode'] as String,
      translatorName: json['translatorName'] as String,
      text: json['text'] as String,
    );
  }

  /// Convert Translation to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'language': language,
      'languageCode': languageCode,
      'translatorName': translatorName,
      'text': text,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Translation &&
        other.id == id &&
        other.language == language &&
        other.languageCode == languageCode &&
        other.translatorName == translatorName &&
        other.text == text;
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      language,
      languageCode,
      translatorName,
      text,
    );
  }

  @override
  String toString() {
    return 'Translation(id: $id, language: $language, '
        'translatorName: $translatorName)';
  }

  /// Create a copy with updated fields
  Translation copyWith({
    String? id,
    String? language,
    String? languageCode,
    String? translatorName,
    String? text,
  }) {
    return Translation(
      id: id ?? this.id,
      language: language ?? this.language,
      languageCode: languageCode ?? this.languageCode,
      translatorName: translatorName ?? this.translatorName,
      text: text ?? this.text,
    );
  }
}
