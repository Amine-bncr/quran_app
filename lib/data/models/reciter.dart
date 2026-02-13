/// Represents a Qur'an reciter
class Reciter {
  final String id;
  final String nameArabic;
  final String nameEnglish;
  final String style;
  final String audioBaseUrl;

  const Reciter({
    required this.id,
    required this.nameArabic,
    required this.nameEnglish,
    required this.style,
    required this.audioBaseUrl,
  });

  /// Create Reciter from JSON
  factory Reciter.fromJson(Map<String, dynamic> json) {
    return Reciter(
      id: json['id'] as String,
      nameArabic: json['nameArabic'] as String,
      nameEnglish: json['nameEnglish'] as String,
      style: json['style'] as String,
      audioBaseUrl: json['audioBaseUrl'] as String,
    );
  }

  /// Convert Reciter to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nameArabic': nameArabic,
      'nameEnglish': nameEnglish,
      'style': style,
      'audioBaseUrl': audioBaseUrl,
    };
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Reciter &&
        other.id == id &&
        other.nameArabic == nameArabic &&
        other.nameEnglish == nameEnglish &&
        other.style == style &&
        other.audioBaseUrl == audioBaseUrl;
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      nameArabic,
      nameEnglish,
      style,
      audioBaseUrl,
    );
  }

  @override
  String toString() {
    return 'Reciter(id: $id, nameEnglish: $nameEnglish, style: $style)';
  }

  /// Create a copy with updated fields
  Reciter copyWith({
    String? id,
    String? nameArabic,
    String? nameEnglish,
    String? style,
    String? audioBaseUrl,
  }) {
    return Reciter(
      id: id ?? this.id,
      nameArabic: nameArabic ?? this.nameArabic,
      nameEnglish: nameEnglish ?? this.nameEnglish,
      style: style ?? this.style,
      audioBaseUrl: audioBaseUrl ?? this.audioBaseUrl,
    );
  }

  /// List of popular reciters
  static List<Reciter> get popularReciters => [
        const Reciter(
          id: 'ar.alafasy',
          nameArabic: 'مشاري راشد العفاسي',
          nameEnglish: 'Mishary Rashid Alafasy',
          style: 'Murattal',
          audioBaseUrl: 'https://cdn.islamic.network/quran/audio/128/ar.alafasy',
        ),
        const Reciter(
          id: 'ar.abdulbasitmurattal',
          nameArabic: 'عبد الباسط عبد الصمد',
          nameEnglish: 'Abdul Basit Abdul Samad',
          style: 'Murattal',
          audioBaseUrl:
              'https://cdn.islamic.network/quran/audio/128/ar.abdulbasitmurattal',
        ),
        const Reciter(
          id: 'ar.abdurrahmaansudais',
          nameArabic: 'عبد الرحمن السديس',
          nameEnglish: 'Abdurrahman As-Sudais',
          style: 'Murattal',
          audioBaseUrl:
              'https://cdn.islamic.network/quran/audio/128/ar.abdurrahmaansudais',
        ),
        const Reciter(
          id: 'ar.husary',
          nameArabic: 'محمود خليل الحصري',
          nameEnglish: 'Mahmoud Khalil Al-Husary',
          style: 'Murattal',
          audioBaseUrl: 'https://cdn.islamic.network/quran/audio/128/ar.husary',
        ),
        const Reciter(
          id: 'ar.minshawi',
          nameArabic: 'محمد صديق المنشاوي',
          nameEnglish: 'Mohamed Siddiq Al-Minshawi',
          style: 'Mujawwad',
          audioBaseUrl:
              'https://cdn.islamic.network/quran/audio/128/ar.minshawi',
        ),
        const Reciter(
          id: 'ar.shaatree',
          nameArabic: 'أبو بكر الشاطري',
          nameEnglish: 'Abu Bakr Ash-Shaatree',
          style: 'Murattal',
          audioBaseUrl:
              'https://cdn.islamic.network/quran/audio/128/ar.shaatree',
        ),
        const Reciter(
          id: 'ar.mahermuaiqly',
          nameArabic: 'ماهر المعيقلي',
          nameEnglish: 'Maher Al Muaiqly',
          style: 'Murattal',
          audioBaseUrl:
              'https://cdn.islamic.network/quran/audio/128/ar.mahermuaiqly',
        ),
        const Reciter(
          id: 'ar.saoodshuraym',
          nameArabic: 'سعود الشريم',
          nameEnglish: 'Saood Ash-Shuraym',
          style: 'Murattal',
          audioBaseUrl:
              'https://cdn.islamic.network/quran/audio/128/ar.saoodshuraym',
        ),
      ];

  /// Get reciter by ID
  static Reciter? getById(String id) {
    try {
      return popularReciters.firstWhere((reciter) => reciter.id == id);
    } catch (e) {
      return null;
    }
  }
}
