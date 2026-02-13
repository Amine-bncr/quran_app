/// Represents an Ayah (verse) in the Qur'an
class Ayah {
  final int number;
  final int numberInSurah;
  final String textUthmani;
  final String textSimple;
  final int surahNumber;
  final int juz;
  final int page;
  final List<TajweedRule>? tajweedRules;

  const Ayah({
    required this.number,
    required this.numberInSurah,
    required this.textUthmani,
    required this.textSimple,
    required this.surahNumber,
    required this.juz,
    required this.page,
    this.tajweedRules,
  });

  /// Create Ayah from JSON
  factory Ayah.fromJson(Map<String, dynamic> json) {
    return Ayah(
      number: json['number'] as int,
      numberInSurah: json['numberInSurah'] as int,
      textUthmani: json['textUthmani'] as String,
      textSimple: json['textSimple'] as String,
      surahNumber: json['surahNumber'] as int,
      juz: json['juz'] as int,
      page: json['page'] as int,
      tajweedRules: json['tajweedRules'] != null
          ? (json['tajweedRules'] as List<dynamic>)
              .map((e) => TajweedRule.fromJson(e as Map<String, dynamic>))
              .toList()
          : null,
    );
  }

  /// Convert Ayah to JSON
  Map<String, dynamic> toJson() {
    return {
      'number': number,
      'numberInSurah': numberInSurah,
      'textUthmani': textUthmani,
      'textSimple': textSimple,
      'surahNumber': surahNumber,
      'juz': juz,
      'page': page,
      'tajweedRules': tajweedRules?.map((e) => e.toJson()).toList(),
    };
  }

  /// Check if Ayah has Tajweed rules
  bool get hasTajweedRules =>
      tajweedRules != null && tajweedRules!.isNotEmpty;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Ayah &&
        other.number == number &&
        other.numberInSurah == numberInSurah &&
        other.textUthmani == textUthmani &&
        other.textSimple == textSimple &&
        other.surahNumber == surahNumber &&
        other.juz == juz &&
        other.page == page;
  }

  @override
  int get hashCode {
    return Object.hash(
      number,
      numberInSurah,
      textUthmani,
      textSimple,
      surahNumber,
      juz,
      page,
    );
  }

  @override
  String toString() {
    return 'Ayah(number: $number, surahNumber: $surahNumber, '
        'numberInSurah: $numberInSurah, page: $page, juz: $juz)';
  }

  /// Create a copy with updated fields
  Ayah copyWith({
    int? number,
    int? numberInSurah,
    String? textUthmani,
    String? textSimple,
    int? surahNumber,
    int? juz,
    int? page,
    List<TajweedRule>? tajweedRules,
  }) {
    return Ayah(
      number: number ?? this.number,
      numberInSurah: numberInSurah ?? this.numberInSurah,
      textUthmani: textUthmani ?? this.textUthmani,
      textSimple: textSimple ?? this.textSimple,
      surahNumber: surahNumber ?? this.surahNumber,
      juz: juz ?? this.juz,
      page: page ?? this.page,
      tajweedRules: tajweedRules ?? this.tajweedRules,
    );
  }
}

/// Represents a Tajweed rule applied to a portion of Ayah text
class TajweedRule {
  final String rule;
  final int startIndex;
  final int endIndex;

  const TajweedRule({
    required this.rule,
    required this.startIndex,
    required this.endIndex,
  });

  /// Create TajweedRule from JSON
  factory TajweedRule.fromJson(Map<String, dynamic> json) {
    return TajweedRule(
      rule: json['rule'] as String,
      startIndex: json['startIndex'] as int,
      endIndex: json['endIndex'] as int,
    );
  }

  /// Convert TajweedRule to JSON
  Map<String, dynamic> toJson() {
    return {
      'rule': rule,
      'startIndex': startIndex,
      'endIndex': endIndex,
    };
  }

  /// Get the length of text affected by this rule
  int get length => endIndex - startIndex;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is TajweedRule &&
        other.rule == rule &&
        other.startIndex == startIndex &&
        other.endIndex == endIndex;
  }

  @override
  int get hashCode => Object.hash(rule, startIndex, endIndex);

  @override
  String toString() {
    return 'TajweedRule(rule: $rule, startIndex: $startIndex, '
        'endIndex: $endIndex)';
  }

  /// Create a copy with updated fields
  TajweedRule copyWith({
    String? rule,
    int? startIndex,
    int? endIndex,
  }) {
    return TajweedRule(
      rule: rule ?? this.rule,
      startIndex: startIndex ?? this.startIndex,
      endIndex: endIndex ?? this.endIndex,
    );
  }
}
