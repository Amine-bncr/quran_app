import '../models/ayah.dart';
import '../models/surah.dart';
import '../models/tafsir.dart';
import '../models/translation.dart';

/// Abstract repository for Quran data operations
abstract class QuranRepository {
  /// Get all Surahs
  Future<List<Surah>> getAllSurahs();

  /// Get a specific Surah by its number
  Future<Surah> getSurahById(int id);

  /// Get all Ayahs for a specific Surah
  Future<List<Ayah>> getAyahsBySurah(int surahNumber);

  /// Get all Ayahs for a specific Juz
  Future<List<Ayah>> getAyahsByJuz(int juzNumber);

  /// Get all Ayahs for a specific page
  Future<List<Ayah>> getAyahsByPage(int pageNumber);

  /// Search for Ayahs containing the query text
  Future<List<Ayah>> searchAyahs(String query);

  /// Get Tafsir for a specific Ayah
  Future<Tafsir> getTafsir(
    int surahNumber,
    int ayahNumber,
    String tafsirId,
  );

  /// Get Translation for a specific Ayah
  Future<Translation> getTranslation(
    int surahNumber,
    int ayahNumber,
    String translationId,
  );

  /// Get multiple translations for a specific Ayah
  Future<List<Translation>> getTranslations(
    int surahNumber,
    int ayahNumber,
    List<String> translationIds,
  );

  /// Get available Tafsir sources
  Future<List<Map<String, String>>> getAvailableTafsirs();

  /// Get available translation sources
  Future<List<Map<String, String>>> getAvailableTranslations();
}
