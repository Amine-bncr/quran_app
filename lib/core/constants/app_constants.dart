/// Application-wide constants
class AppConstants {
  // App metadata
  static const String appName = 'Qur\'an App';
  static const String appVersion = '1.0.0';
  static const String appDescription =
      'A beautifully crafted Qur\'an reading and listening mobile application';

  // API endpoints
  static const String quranApiBaseUrl = 'https://api.quran.com/api/v4';
  static const String alQuranCloudApiBaseUrl = 'https://api.alquran.cloud/v1';

  // Supabase configuration (to be updated with actual values)
  static const String supabaseUrl = 'YOUR_SUPABASE_URL';
  static const String supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';

  // Cache configuration
  static const Duration cacheDuration = Duration(days: 7);
  static const Duration audioCacheDuration = Duration(days: 30);
  static const int maxCacheSize = 100 * 1024 * 1024; // 100 MB

  // Supported languages
  static const List<String> supportedLanguages = [
    'ar', // Arabic
    'en', // English
    'fr', // French
    'es', // Spanish
    'ur', // Urdu
    'id', // Indonesian
    'tr', // Turkish
    'de', // German
    'ru', // Russian
    'bn', // Bengali
  ];

  // Language names
  static const Map<String, String> languageNames = {
    'ar': 'العربية',
    'en': 'English',
    'fr': 'Français',
    'es': 'Español',
    'ur': 'اردو',
    'id': 'Bahasa Indonesia',
    'tr': 'Türkçe',
    'de': 'Deutsch',
    'ru': 'Русский',
    'bn': 'বাংলা',
  };

  // Default reciter
  static const String defaultReciterId = 'ar.alafasy';
  static const String defaultReciterName = 'Mishary Rashid Alafasy';

  // Quran structure
  static const int totalSurahs = 114;
  static const int totalAyahs = 6236;
  static const int totalJuz = 30;
  static const int totalPages = 604;

  // Revelation types
  static const String revelationMeccan = 'Meccan';
  static const String revelationMedinan = 'Medinan';

  // Default preferences
  static const String defaultLanguage = 'en';
  static const String defaultTranslationId = 'en.sahih';
  static const String defaultTafsirId = 'en.tafsir-ibn-kathir';
  static const bool defaultShowTranslation = true;
  static const bool defaultShowTajweed = true;
  static const double defaultTextSize = 24.0;
  static const bool defaultAutoScroll = false;

  // Audio settings
  static const double defaultPlaybackSpeed = 1.0;
  static const bool defaultRepeatEnabled = false;
  static const bool defaultAutoPlayNext = true;

  // Hive box names
  static const String bookmarksBox = 'bookmarks';
  static const String preferencesBox = 'preferences';
  static const String progressBox = 'progress';
  static const String cacheBox = 'cache';

  // Shared preferences keys
  static const String keyThemeMode = 'theme_mode';
  static const String keyLanguage = 'language';
  static const String keyTextSize = 'text_size';
  static const String keyShowTranslation = 'show_translation';
  static const String keyShowTajweed = 'show_tajweed';
  static const String keySelectedReciter = 'selected_reciter';
  static const String keyPlaybackSpeed = 'playback_speed';
  static const String keyAutoScroll = 'auto_scroll';
  static const String keyLastReadSurah = 'last_read_surah';
  static const String keyLastReadAyah = 'last_read_ayah';
}
