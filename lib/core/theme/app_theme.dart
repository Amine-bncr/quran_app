import 'package:flutter/material.dart';

/// Islamic-inspired theme configuration for the Qur'an app
class AppTheme {
  // Light theme colors
  static const Color goldAccent = Color(0xFFD4AF37);
  static const Color goldAccentDark = Color(0xFFC9A227);
  static const Color parchmentBackground = Color(0xFFFDF5E6);
  static const Color parchmentBackgroundDark = Color(0xFFFAF0DC);
  static const Color lightTextPrimary = Color(0xFF2C2416);
  static const Color lightTextSecondary = Color(0xFF5C513E);

  // Dark theme colors
  static const Color darkBackground = Color(0xFF0D1117);
  static const Color darkBackgroundSecondary = Color(0xFF161B22);
  static const Color darkSurface = Color(0xFF1C2128);
  static const Color deepBlue = Color(0xFF0A1929);
  static const Color darkTextPrimary = Color(0xFFE6E1D3);
  static const Color darkTextSecondary = Color(0xFFB4AFA0);

  /// Light theme configuration
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: goldAccent,
      scaffoldBackgroundColor: parchmentBackground,
      colorScheme: const ColorScheme.light(
        primary: goldAccent,
        secondary: goldAccentDark,
        surface: parchmentBackgroundDark,
        background: parchmentBackground,
        error: Color(0xFFB71C1C),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: lightTextPrimary,
        onBackground: lightTextPrimary,
        onError: Colors.white,
      ),
      textTheme: _buildTextTheme(
        baseColor: lightTextPrimary,
        secondaryColor: lightTextSecondary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: goldAccent,
        foregroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
      ),
      cardTheme: CardTheme(
        color: parchmentBackgroundDark,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: goldAccent,
          foregroundColor: Colors.white,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      iconTheme: const IconThemeData(
        color: goldAccentDark,
      ),
    );
  }

  /// Dark theme configuration
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: goldAccent,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: const ColorScheme.dark(
        primary: goldAccent,
        secondary: goldAccentDark,
        surface: darkSurface,
        background: darkBackground,
        error: Color(0xFFCF6679),
        onPrimary: darkBackground,
        onSecondary: darkBackground,
        onSurface: darkTextPrimary,
        onBackground: darkTextPrimary,
        onError: darkBackground,
      ),
      textTheme: _buildTextTheme(
        baseColor: darkTextPrimary,
        secondaryColor: darkTextSecondary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: darkBackgroundSecondary,
        foregroundColor: goldAccent,
        elevation: 0,
        centerTitle: true,
      ),
      cardTheme: CardTheme(
        color: darkSurface,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: goldAccent,
          foregroundColor: darkBackground,
          elevation: 2,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      iconTheme: const IconThemeData(
        color: goldAccent,
      ),
    );
  }

  /// Build text theme with Arabic font support
  static TextTheme _buildTextTheme({
    required Color baseColor,
    required Color secondaryColor,
  }) {
    return TextTheme(
      // Display styles for large text
      displayLarge: TextStyle(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        color: baseColor,
        height: 1.5,
      ),
      displayMedium: TextStyle(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        color: baseColor,
        height: 1.5,
      ),
      displaySmall: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        color: baseColor,
        height: 1.5,
      ),

      // Headline styles
      headlineLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: baseColor,
        height: 1.5,
      ),
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: baseColor,
        height: 1.5,
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: baseColor,
        height: 1.5,
      ),

      // Title styles
      titleLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w500,
        color: baseColor,
        height: 1.5,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: baseColor,
        height: 1.5,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: baseColor,
        height: 1.5,
      ),

      // Body styles
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: baseColor,
        height: 1.8,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: baseColor,
        height: 1.8,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: secondaryColor,
        height: 1.8,
      ),

      // Label styles
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: baseColor,
        height: 1.5,
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: baseColor,
        height: 1.5,
      ),
      labelSmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: secondaryColor,
        height: 1.5,
      ),
    );
  }

  /// Arabic text style for Quranic text
  static TextStyle arabicTextStyle({
    required bool isDarkMode,
    double fontSize = 24,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: isDarkMode ? darkTextPrimary : lightTextPrimary,
      height: 2.0, // Extra line height for Arabic text
      // fontFamily: 'Amiri', // Uncomment when font assets are added
    );
  }

  /// Uthmani script text style for Mushaf view
  static TextStyle uthmaniTextStyle({
    required bool isDarkMode,
    double fontSize = 28,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
      color: isDarkMode ? darkTextPrimary : lightTextPrimary,
      height: 2.2,
      // fontFamily: 'Scheherazade', // Uncomment when font assets are added
    );
  }
}
