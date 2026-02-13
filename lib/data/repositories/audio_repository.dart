import '../models/reciter.dart';

/// Abstract repository for audio operations
abstract class AudioRepository {
  /// Get list of available reciters
  Future<List<Reciter>> getReciters();

  /// Get audio URL for a specific Ayah and reciter
  Future<String> getAudioUrl(
    int surahNumber,
    int ayahNumber,
    String reciterId,
  );

  /// Get audio URL for an entire Surah
  Future<String> getSurahAudioUrl(
    int surahNumber,
    String reciterId,
  );

  /// Download audio file for offline playback
  Future<String> downloadAudio(String url);

  /// Check if audio is downloaded
  Future<bool> isAudioDownloaded(
    int surahNumber,
    int ayahNumber,
    String reciterId,
  );

  /// Get local audio file path if downloaded
  Future<String?> getLocalAudioPath(
    int surahNumber,
    int ayahNumber,
    String reciterId,
  );

  /// Delete downloaded audio
  Future<void> deleteDownloadedAudio(
    int surahNumber,
    int ayahNumber,
    String reciterId,
  );

  /// Get total size of downloaded audio
  Future<int> getDownloadedAudioSize();

  /// Clear all downloaded audio
  Future<void> clearAllDownloadedAudio();
}
