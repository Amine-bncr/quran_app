/// Represents a Surah (chapter) in the Qur'an
class Surah {
  final int number;
  final String nameArabic;
  final String nameEnglish;
  final String nameTransliteration;
  final String revelationType;
  final int verseCount;
  final List<int> juzNumbers;

  const Surah({
    required this.number,
    required this.nameArabic,
    required this.nameEnglish,
    required this.nameTransliteration,
    required this.revelationType,
    required this.verseCount,
    required this.juzNumbers,
  });

  /// Create Surah from JSON
  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      number: json['number'] as int,
      nameArabic: json['nameArabic'] as String,
      nameEnglish: json['nameEnglish'] as String,
      nameTransliteration: json['nameTransliteration'] as String,
      revelationType: json['revelationType'] as String,
      verseCount: json['verseCount'] as int,
      juzNumbers: (json['juzNumbers'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
    );
  }

  /// Convert Surah to JSON
  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'nameArabic': nameArabic,
      'nameEnglish': nameEnglish,
      'nameTransliteration': nameTransliteration,
      'revelationType': revelationType,
      'verseCount': verseCount,
      'juzNumbers': juzNumbers,
    };
  }

  /// Check if Surah is Meccan
  bool get isMeccan => revelationType == 'Meccan';

  /// Check if Surah is Medinan
  bool get isMedinan => revelationType == 'Medinan';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Surah &&
        other.number == number &&
        other.nameArabic == nameArabic &&
        other.nameEnglish == nameEnglish &&
        other.nameTransliteration == nameTransliteration &&
        other.revelationType == revelationType &&
        other.verseCount == verseCount;
  }

  @override
  int get hashCode {
    return Object.hash(
      number,
      nameArabic,
      nameEnglish,
      nameTransliteration,
      revelationType,
      verseCount,
    );
  }

  @override
  String toString() {
    return 'Surah(number: $number, nameArabic: $nameArabic, '
        'nameEnglish: $nameEnglish, verseCount: $verseCount)';
  }

  /// Create a copy with updated fields
  Surah copyWith({
    int? number,
    String? nameArabic,
    String? nameEnglish,
    String? nameTransliteration,
    String? revelationType,
    int? verseCount,
    List<int>? juzNumbers,
  }) {
    return Surah(
      number: number ?? this.number,
      nameArabic: nameArabic ?? this.nameArabic,
      nameEnglish: nameEnglish ?? this.nameEnglish,
      nameTransliteration: nameTransliteration ?? this.nameTransliteration,
      revelationType: revelationType ?? this.revelationType,
      verseCount: verseCount ?? this.verseCount,
      juzNumbers: juzNumbers ?? this.juzNumbers,
    );
  }
}
