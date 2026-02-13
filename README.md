# 📖 Qur'an Flutter Application

A beautifully crafted mobile application for reading and listening to the Holy Qur'an, built with Flutter. This app combines elegant Islamic aesthetics with modern functionality to provide an immersive Quranic experience.

![Version](https://img.shields.io/badge/version-1.0.0-blue)
![Flutter](https://img.shields.io/badge/Flutter-3.0%2B-02569B?logo=flutter)
![License](https://img.shields.io/badge/license-MIT-green)

## ✨ Features

### Phase 1: Core Reading Experience
- 📚 Browse all 114 Surahs with detailed information
- 📄 Read Quranic text in beautiful Uthmani script
- 🎨 Tajweed color-coding for proper recitation
- 🌙 Elegant light and dark themes with Islamic aesthetics
- 🔖 Bookmark favorite verses
- 📍 Track reading progress

### Phase 2: Audio & Translations
- 🎵 Listen to recitations from renowned Qaris
- 🔊 Audio player with playback controls
- 🌍 Multiple language translations
- 📖 Tafsir (commentary) support
- ⚡ Offline audio download

### Phase 3: Advanced Features
- 🔍 Powerful search functionality
- 📱 Mushaf (page-by-page) view
- 👤 User authentication & cloud sync
- ⚙️ Customizable settings
- 🎯 Juz and page navigation

## 🛠️ Tech Stack

- **Framework**: Flutter 3.0+
- **State Management**: Riverpod
- **Backend**: Supabase (Authentication & Database)
- **API**: Quran.com API / AlQuran Cloud API
- **Audio**: just_audio
- **Local Storage**: Hive
- **Networking**: Dio
- **Routing**: go_router
- **Caching**: cached_network_image

## 🏗️ Project Structure

```
lib/
├── core/                    # Core utilities and configurations
│   ├── constants/          # App-wide constants
│   │   └── app_constants.dart
│   ├── theme/              # Theme configuration
│   │   ├── app_theme.dart
│   │   └── tajweed_colors.dart
│   └── utils/              # Utility functions
│       └── arabic_utils.dart
├── data/                    # Data layer
│   ├── models/             # Data models
│   │   ├── surah.dart
│   │   ├── ayah.dart
│   │   ├── reciter.dart
│   │   ├── bookmark.dart
│   │   ├── tafsir.dart
│   │   └── translation.dart
│   ├── repositories/       # Repository interfaces
│   │   ├── quran_repository.dart
│   │   ├── audio_repository.dart
│   │   └── user_repository.dart
│   └── services/           # External service integrations
│       ├── quran_api_service.dart
│       ├── supabase_service.dart
│       └── audio_service.dart
├── features/                # Feature modules
│   ├── surah_browser/      # Browse Surahs
│   ├── mushaf_view/        # Page-by-page Mushaf view
│   ├── tajweed/            # Tajweed rules display
│   ├── audio_player/       # Audio playback
│   ├── tafsir/             # Tafsir/commentary
│   ├── translations/       # Translation management
│   ├── search/             # Search functionality
│   ├── bookmarks/          # Bookmark management
│   ├── auth/               # Authentication
│   └── settings/           # App settings
├── providers/               # Riverpod state providers
│   ├── quran_provider.dart
│   ├── audio_provider.dart
│   └── user_provider.dart
├── widgets/                 # Reusable widgets
│   └── common/
└── main.dart               # App entry point
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK (3.0 or higher)
- Android Studio / VS Code with Flutter extensions
- iOS development: Xcode (for macOS users)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Amine-bncr/quran_app.git
   cd quran_app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure Supabase** (Optional for authentication features)
   - Create a project at [supabase.com](https://supabase.com)
   - Update `lib/core/constants/app_constants.dart` with your credentials:
     ```dart
     static const String supabaseUrl = 'YOUR_SUPABASE_URL';
     static const String supabaseAnonKey = 'YOUR_SUPABASE_ANON_KEY';
     ```

4. **Run the app**
   ```bash
   flutter run
   ```

## 🎨 Design Philosophy

This app follows Islamic aesthetic principles:

- **Warmth & Elegance**: Parchment-like backgrounds with gold accents
- **Respect & Clarity**: Clean layouts that honor the sacred text
- **Accessibility**: Support for both LTR and RTL languages
- **Minimalism**: Focus on content without distractions

### Color Palette

**Light Theme:**
- Gold Accents: `#D4AF37`, `#C9A227`
- Parchment Background: `#FDF5E6`, `#FAF0DC`
- Text: Dark brown tones

**Dark Theme:**
- Deep Blue/Black: `#0D1117`, `#161B22`
- Gold Accents: `#D4AF37`
- Text: Warm off-white

**Tajweed Colors:**
- Idgham (Purple): `#9400D3`
- Ikhfa (Sea Green): `#2E8B57`
- Qalqalah (Orange Red): `#FF4500`
- Iqlab (Dodger Blue): `#1E90FF`
- Madd (Hot Pink): `#FF69B4`
- Ghunnah (Lime Green): `#32CD32`

## 📦 Dependencies

```yaml
dependencies:
  flutter_riverpod: ^2.4.0      # State management
  dio: ^5.3.0                   # HTTP client
  supabase_flutter: ^2.0.0      # Backend services
  just_audio: ^0.9.36           # Audio playback
  hive: ^2.2.3                  # Local database
  hive_flutter: ^1.1.0          # Hive Flutter support
  go_router: ^12.0.0            # Navigation
  cached_network_image: ^3.3.0  # Image caching
  flutter_svg: ^2.0.9           # SVG support
  intl: ^0.18.1                 # Internationalization
```

## 🧪 Testing

```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run integration tests
flutter test integration_test
```

## 📱 Supported Platforms

- ✅ Android (5.0+)
- ✅ iOS (12.0+)
- 🚧 Web (Coming soon)
- 🚧 Windows (Coming soon)
- 🚧 macOS (Coming soon)
- 🚧 Linux (Coming soon)

## 🤝 Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Coding Standards

- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Write tests for new features
- Ensure all linters pass: `flutter analyze`
- Format code: `dart format .`

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Quran.com](https://quran.com) for providing the Quran API
- [Al-Quran Cloud](https://alquran.cloud) for audio resources
- All the Qaris whose recitations are featured
- The Flutter community for amazing packages and support

## 📞 Contact

**Amine Bencaar**
- GitHub: [@Amine-bncr](https://github.com/Amine-bncr)
- Email: your.email@example.com

## 🗺️ Roadmap

- [x] Initial project setup
- [x] Core models and architecture
- [x] Theme configuration
- [ ] Surah browser implementation
- [ ] Ayah reading view
- [ ] Audio player integration
- [ ] Translation support
- [ ] Search functionality
- [ ] Bookmarks feature
- [ ] User authentication
- [ ] Cloud synchronization
- [ ] Offline mode
- [ ] Widget/Extension support

---

<div align="center">
  <p>Built with ❤️ for the Muslim Ummah</p>
  <p>⭐ Star this repo if you find it useful!</p>
</div>