/// Utilities for handling Arabic text and numerals
class ArabicUtils {
  // Western to Arabic numeral mapping
  static const Map<String, String> _westernToArabicNumerals = {
    '0': '٠',
    '1': '١',
    '2': '٢',
    '3': '٣',
    '4': '٤',
    '5': '٥',
    '6': '٦',
    '7': '٧',
    '8': '٨',
    '9': '٩',
  };

  /// Convert Western numerals to Arabic numerals
  static String toArabicNumerals(dynamic number) {
    final String numberStr = number.toString();
    String result = '';

    for (int i = 0; i < numberStr.length; i++) {
      final char = numberStr[i];
      result += _westernToArabicNumerals[char] ?? char;
    }

    return result;
  }

  /// Convert Arabic numerals to Western numerals
  static String toWesternNumerals(String arabicNumber) {
    String result = arabicNumber;

    _westernToArabicNumerals.forEach((western, arabic) {
      result = result.replaceAll(arabic, western);
    });

    return result;
  }

  /// Check if text contains Arabic characters
  static bool containsArabic(String text) {
    final arabicRegex = RegExp(r'[\u0600-\u06FF]');
    return arabicRegex.hasMatch(text);
  }

  /// Get text direction based on content
  static bool isRTL(String text) {
    return containsArabic(text);
  }

  /// Remove Arabic diacritics (Tashkeel)
  static String removeDiacritics(String text) {
    // Arabic diacritics Unicode range: U+064B to U+065F
    final diacriticsRegex = RegExp(r'[\u064B-\u065F]');
    return text.replaceAll(diacriticsRegex, '');
  }

  /// Normalize Arabic text for searching
  static String normalizeArabic(String text) {
    String normalized = text;

    // Normalize Alef variations
    normalized = normalized.replaceAll(RegExp(r'[أإآ]'), 'ا');

    // Normalize Hamza variations
    normalized = normalized.replaceAll(RegExp(r'[ؤئ]'), 'ء');

    // Normalize Taa Marbouta and Haa
    normalized = normalized.replaceAll('ة', 'ه');

    // Remove diacritics
    normalized = removeDiacritics(normalized);

    // Remove extra spaces
    normalized = normalized.replaceAll(RegExp(r'\s+'), ' ').trim();

    return normalized;
  }

  /// Check if text starts with Bismillah
  static bool startsWithBismillah(String text) {
    final bismillah = 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ';
    final simpleBismillah = 'بسم الله الرحمن الرحيم';

    return text.startsWith(bismillah) || text.startsWith(simpleBismillah);
  }

  /// Get Bismillah text
  static String getBismillah() {
    return 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ';
  }

  /// Remove Bismillah prefix from text
  static String removeBismillahPrefix(String text) {
    final bismillah = 'بِسْمِ ٱللَّهِ ٱلرَّحْمَٰنِ ٱلرَّحِيمِ';
    final simpleBismillah = 'بسم الله الرحمن الرحيم';

    String result = text;

    if (result.startsWith(bismillah)) {
      result = result.substring(bismillah.length).trim();
    } else if (result.startsWith(simpleBismillah)) {
      result = result.substring(simpleBismillah.length).trim();
    }

    return result;
  }

  /// Format Surah name with article (Al-)
  static String formatSurahName(String name) {
    if (name.startsWith('Al-') || name.startsWith('al-')) {
      return name;
    }
    // Check if name should have the article
    final namesWithoutArticle = [
      'Fatihah',
      'Baqarah',
      'Imran',
      'Nisa',
      'Maidah',
      'Anam',
      'Araf',
      'Anfal',
      'Tawbah',
      'Yunus',
      'Hud',
      'Yusuf',
      'Rad',
      'Ibrahim',
      'Hijr',
      'Nahl',
      'Isra',
      'Kahf',
      'Maryam',
      'Taha',
      'Anbiya',
      'Hajj',
      'Muminun',
      'Nur',
      'Furqan',
      'Shuara',
      'Naml',
      'Qasas',
      'Ankabut',
      'Rum',
      'Luqman',
      'Sajda',
      'Ahzab',
      'Saba',
      'Fatir',
      'Yasin',
      'Saffat',
      'Sad',
      'Zumar',
      'Ghafir',
      'Fussilat',
      'Shura',
      'Zukhruf',
      'Dukhan',
      'Jathiya',
      'Ahqaf',
      'Muhammad',
      'Fath',
      'Hujurat',
      'Qaf',
      'Dhariyat',
      'Tur',
      'Najm',
      'Qamar',
      'Rahman',
      'Waqia',
      'Hadid',
      'Mujadila',
      'Hashr',
      'Mumtahana',
      'Saff',
      'Jumua',
      'Munafiqun',
      'Taghabun',
      'Talaq',
      'Tahrim',
      'Mulk',
      'Qalam',
      'Haqqah',
      'Maarij',
      'Nuh',
      'Jinn',
      'Muzzammil',
      'Muddathir',
      'Qiyama',
      'Insan',
      'Mursalat',
      'Naba',
      'Naziat',
      'Abasa',
      'Takwir',
      'Infitar',
      'Mutaffifin',
      'Inshiqaq',
      'Buruj',
      'Tariq',
      'Ala',
      'Ghashiya',
      'Fajr',
      'Balad',
      'Shams',
      'Layl',
      'Duha',
      'Sharh',
      'Tin',
      'Alaq',
      'Qadr',
      'Bayyina',
      'Zalzala',
      'Adiyat',
      'Qaria',
      'Takathur',
      'Asr',
      'Humaza',
      'Fil',
      'Quraysh',
      'Maun',
      'Kawthar',
      'Kafirun',
      'Nasr',
      'Masad',
      'Ikhlas',
      'Falaq',
      'Nas',
    ];

    if (namesWithoutArticle.any((n) => name.contains(n))) {
      return name;
    }

    return 'Al-$name';
  }

  /// Get Juz name in Arabic
  static String getJuzNameArabic(int juzNumber) {
    if (juzNumber < 1 || juzNumber > 30) {
      return '';
    }
    return 'الجزء ${toArabicNumerals(juzNumber)}';
  }

  /// Get Juz name in English
  static String getJuzNameEnglish(int juzNumber) {
    if (juzNumber < 1 || juzNumber > 30) {
      return '';
    }
    return 'Juz $juzNumber';
  }
}
