import 'package:dio/dio.dart';
import '../../core/constants/app_constants.dart';

/// Service for interacting with Quran.com API
class QuranApiService {
  late final Dio _dio;

  QuranApiService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.quranApiBaseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
  }

  // TODO: Implement API methods

  /// Get all Surahs
  Future<Map<String, dynamic>> getSurahs() async {
    // TODO: Implement API call to fetch all Surahs
    // Example: GET /chapters
    throw UnimplementedError('getSurahs not yet implemented');
  }

  /// Get specific Surah by ID
  Future<Map<String, dynamic>> getSurah(int id) async {
    // TODO: Implement API call to fetch Surah details
    // Example: GET /chapters/{id}
    throw UnimplementedError('getSurah not yet implemented');
  }

  /// Get Ayahs for a Surah
  Future<Map<String, dynamic>> getAyahsBySurah(int surahNumber) async {
    // TODO: Implement API call to fetch Ayahs
    // Example: GET /verses/by_chapter/{chapter_number}
    throw UnimplementedError('getAyahsBySurah not yet implemented');
  }

  /// Get Ayahs by Juz
  Future<Map<String, dynamic>> getAyahsByJuz(int juzNumber) async {
    // TODO: Implement API call to fetch Ayahs by Juz
    // Example: GET /verses/by_juz/{juz_number}
    throw UnimplementedError('getAyahsByJuz not yet implemented');
  }

  /// Get Ayahs by page
  Future<Map<String, dynamic>> getAyahsByPage(int pageNumber) async {
    // TODO: Implement API call to fetch Ayahs by page
    // Example: GET /verses/by_page/{page_number}
    throw UnimplementedError('getAyahsByPage not yet implemented');
  }

  /// Search Ayahs
  Future<Map<String, dynamic>> searchAyahs(String query) async {
    // TODO: Implement search functionality
    // Example: GET /search?q={query}
    throw UnimplementedError('searchAyahs not yet implemented');
  }

  /// Get translation for an Ayah
  Future<Map<String, dynamic>> getTranslation(
    int surahNumber,
    int ayahNumber,
    String translationId,
  ) async {
    // TODO: Implement API call to fetch translation
    throw UnimplementedError('getTranslation not yet implemented');
  }

  /// Get Tafsir for an Ayah
  Future<Map<String, dynamic>> getTafsir(
    int surahNumber,
    int ayahNumber,
    String tafsirId,
  ) async {
    // TODO: Implement API call to fetch Tafsir
    throw UnimplementedError('getTafsir not yet implemented');
  }

  /// Get available translations
  Future<List<Map<String, dynamic>>> getAvailableTranslations() async {
    // TODO: Implement API call to fetch available translations
    throw UnimplementedError('getAvailableTranslations not yet implemented');
  }

  /// Get available Tafsirs
  Future<List<Map<String, dynamic>>> getAvailableTafsirs() async {
    // TODO: Implement API call to fetch available Tafsirs
    throw UnimplementedError('getAvailableTafsirs not yet implemented');
  }

  /// Dispose resources
  void dispose() {
    _dio.close();
  }
}
