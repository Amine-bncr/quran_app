import 'package:flutter/material.dart';

/// Tajweed rule colors for Quranic text highlighting
class TajweedColors {
  // Idgham - Assimilation
  static const Color idgham = Color(0xFF9400D3); // Purple

  // Ikhfa - Concealment
  static const Color ikhfa = Color(0xFF2E8B57); // Sea Green

  // Qalqalah - Echoing
  static const Color qalqalah = Color(0xFFFF4500); // Orange Red

  // Iqlab - Conversion
  static const Color iqlab = Color(0xFF1E90FF); // Dodger Blue

  // Madd - Prolongation
  static const Color madd = Color(0xFFFF69B4); // Hot Pink

  // Ghunnah - Nasalization
  static const Color ghunnah = Color(0xFF32CD32); // Lime Green

  /// Get color by rule name
  static Color getColorByRule(String ruleName) {
    switch (ruleName.toLowerCase()) {
      case 'idgham':
        return idgham;
      case 'ikhfa':
        return ikhfa;
      case 'qalqalah':
        return qalqalah;
      case 'iqlab':
        return iqlab;
      case 'madd':
        return madd;
      case 'ghunnah':
        return ghunnah;
      default:
        return Colors.transparent;
    }
  }

  /// Get all tajweed rules with their colors
  static Map<String, Color> getAllRules() {
    return {
      'idgham': idgham,
      'ikhfa': ikhfa,
      'qalqalah': qalqalah,
      'iqlab': iqlab,
      'madd': madd,
      'ghunnah': ghunnah,
    };
  }
}
