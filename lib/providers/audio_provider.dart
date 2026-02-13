import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../data/models/reciter.dart';

// TODO: Implement audio state management with Riverpod

/// Provider for list of available reciters
final recitersProvider = FutureProvider<List<Reciter>>((ref) async {
  // TODO: Fetch reciters from repository or use predefined list
  return Reciter.popularReciters;
});

/// State provider for selected reciter
final selectedReciterProvider = StateProvider<Reciter?>((ref) {
  // TODO: Load from user preferences
  return Reciter.popularReciters.first;
});

/// State provider for audio playback state
final isPlayingProvider = StateProvider<bool>((ref) => false);

/// State provider for current audio position
final audioPositionProvider = StateProvider<Duration>((ref) => Duration.zero);

/// State provider for audio duration
final audioDurationProvider = StateProvider<Duration?>((ref) => null);

/// State provider for playback speed
final playbackSpeedProvider = StateProvider<double>((ref) => 1.0);

/// State provider for repeat mode
final repeatModeProvider = StateProvider<bool>((ref) => false);

/// State provider for auto-play next Ayah
final autoPlayNextProvider = StateProvider<bool>((ref) => true);

/// Provider for currently playing Ayah
final currentlyPlayingProvider = StateProvider<PlayingAyah?>((ref) => null);

/// Class to hold currently playing Ayah information
class PlayingAyah {
  final int surahNumber;
  final int ayahNumber;
  final String audioUrl;

  PlayingAyah({
    required this.surahNumber,
    required this.ayahNumber,
    required this.audioUrl,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlayingAyah &&
          runtimeType == other.runtimeType &&
          surahNumber == other.surahNumber &&
          ayahNumber == other.ayahNumber &&
          audioUrl == other.audioUrl;

  @override
  int get hashCode =>
      surahNumber.hashCode ^ ayahNumber.hashCode ^ audioUrl.hashCode;
}

/// Notifier for audio player controls
class AudioPlayerNotifier extends StateNotifier<AudioPlayerState> {
  AudioPlayerNotifier() : super(const AudioPlayerState());

  // TODO: Implement audio control methods

  Future<void> play(int surahNumber, int ayahNumber) async {
    // TODO: Implement play
    throw UnimplementedError('play not yet implemented');
  }

  Future<void> pause() async {
    // TODO: Implement pause
    throw UnimplementedError('pause not yet implemented');
  }

  Future<void> resume() async {
    // TODO: Implement resume
    throw UnimplementedError('resume not yet implemented');
  }

  Future<void> stop() async {
    // TODO: Implement stop
    throw UnimplementedError('stop not yet implemented');
  }

  Future<void> seek(Duration position) async {
    // TODO: Implement seek
    throw UnimplementedError('seek not yet implemented');
  }

  void setSpeed(double speed) {
    // TODO: Implement set speed
    throw UnimplementedError('setSpeed not yet implemented');
  }

  void setRepeat(bool enabled) {
    state = state.copyWith(repeatEnabled: enabled);
  }

  void setAutoPlayNext(bool enabled) {
    state = state.copyWith(autoPlayNext: enabled);
  }
}

/// State class for audio player
class AudioPlayerState {
  final bool isPlaying;
  final Duration position;
  final Duration? duration;
  final double speed;
  final bool repeatEnabled;
  final bool autoPlayNext;
  final PlayingAyah? currentAyah;

  const AudioPlayerState({
    this.isPlaying = false,
    this.position = Duration.zero,
    this.duration,
    this.speed = 1.0,
    this.repeatEnabled = false,
    this.autoPlayNext = true,
    this.currentAyah,
  });

  AudioPlayerState copyWith({
    bool? isPlaying,
    Duration? position,
    Duration? duration,
    double? speed,
    bool? repeatEnabled,
    bool? autoPlayNext,
    PlayingAyah? currentAyah,
  }) {
    return AudioPlayerState(
      isPlaying: isPlaying ?? this.isPlaying,
      position: position ?? this.position,
      duration: duration ?? this.duration,
      speed: speed ?? this.speed,
      repeatEnabled: repeatEnabled ?? this.repeatEnabled,
      autoPlayNext: autoPlayNext ?? this.autoPlayNext,
      currentAyah: currentAyah ?? this.currentAyah,
    );
  }
}

/// Provider for audio player notifier
final audioPlayerProvider =
    StateNotifierProvider<AudioPlayerNotifier, AudioPlayerState>(
  (ref) => AudioPlayerNotifier(),
);
