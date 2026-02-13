import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/ayah.dart';
import '../data/models/surah.dart';
import '../data/models/tafsir.dart';
import '../data/models/translation.dart';

// TODO: Implement Quran state management with Riverpod

/// Provider for list of all Surahs
final surahsProvider = FutureProvider<List<Surah>>((ref) async {
  // TODO: Fetch surahs from repository
  throw UnimplementedError('surahsProvider not yet implemented');
});

/// Provider for a specific Surah by ID
final surahByIdProvider = FutureProvider.family<Surah, int>((ref, id) async {
  // TODO: Fetch surah by id from repository
  throw UnimplementedError('surahByIdProvider not yet implemented');
});

/// Provider for Ayahs of a specific Surah
final ayahsBySurahProvider = FutureProvider.family<List<Ayah>, int>(
  (ref, surahNumber) async {
    // TODO: Fetch ayahs by surah from repository
    throw UnimplementedError('ayahsBySurahProvider not yet implemented');
  },
);

/// Provider for Ayahs of a specific Juz
final ayahsByJuzProvider = FutureProvider.family<List<Ayah>, int>(
  (ref, juzNumber) async {
    // TODO: Fetch ayahs by juz from repository
    throw UnimplementedError('ayahsByJuzProvider not yet implemented');
  },
);

/// Provider for Ayahs of a specific page
final ayahsByPageProvider = FutureProvider.family<List<Ayah>, int>(
  (ref, pageNumber) async {
    // TODO: Fetch ayahs by page from repository
    throw UnimplementedError('ayahsByPageProvider not yet implemented');
  },
);

/// Provider for searching Ayahs
final searchAyahsProvider = FutureProvider.family<List<Ayah>, String>(
  (ref, query) async {
    // TODO: Search ayahs from repository
    throw UnimplementedError('searchAyahsProvider not yet implemented');
  },
);

/// Provider for Tafsir of a specific Ayah
final tafsirProvider = FutureProvider.family<Tafsir, TafsirParams>(
  (ref, params) async {
    // TODO: Fetch tafsir from repository
    throw UnimplementedError('tafsirProvider not yet implemented');
  },
);

/// Provider for Translation of a specific Ayah
final translationProvider = FutureProvider.family<Translation, TranslationParams>(
  (ref, params) async {
    // TODO: Fetch translation from repository
    throw UnimplementedError('translationProvider not yet implemented');
  },
);

/// State provider for current Surah number
final currentSurahProvider = StateProvider<int?>((ref) => null);

/// State provider for current Ayah number
final currentAyahProvider = StateProvider<int?>((ref) => null);

/// State provider for show translation toggle
final showTranslationProvider = StateProvider<bool>((ref) => true);

/// State provider for show Tajweed toggle
final showTajweedProvider = StateProvider<bool>((ref) => true);

/// State provider for text size
final textSizeProvider = StateProvider<double>((ref) => 24.0);

// Helper classes for family providers

/// Parameters for Tafsir provider
class TafsirParams {
  final int surahNumber;
  final int ayahNumber;
  final String tafsirId;

  TafsirParams({
    required this.surahNumber,
    required this.ayahNumber,
    required this.tafsirId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TafsirParams &&
          runtimeType == other.runtimeType &&
          surahNumber == other.surahNumber &&
          ayahNumber == other.ayahNumber &&
          tafsirId == other.tafsirId;

  @override
  int get hashCode =>
      surahNumber.hashCode ^ ayahNumber.hashCode ^ tafsirId.hashCode;
}

/// Parameters for Translation provider
class TranslationParams {
  final int surahNumber;
  final int ayahNumber;
  final String translationId;

  TranslationParams({
    required this.surahNumber,
    required this.ayahNumber,
    required this.translationId,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TranslationParams &&
          runtimeType == other.runtimeType &&
          surahNumber == other.surahNumber &&
          ayahNumber == other.ayahNumber &&
          translationId == other.translationId;

  @override
  int get hashCode =>
      surahNumber.hashCode ^ ayahNumber.hashCode ^ translationId.hashCode;
}
