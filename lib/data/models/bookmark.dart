/// Represents a bookmark for a specific Ayah
class Bookmark {
  final String id;
  final int surahNumber;
  final int ayahNumber;
  final DateTime createdAt;
  final String? note;

  const Bookmark({
    required this.id,
    required this.surahNumber,
    required this.ayahNumber,
    required this.createdAt,
    this.note,
  });

  /// Create Bookmark from JSON
  factory Bookmark.fromJson(Map<String, dynamic> json) {
    return Bookmark(
      id: json['id'] as String,
      surahNumber: json['surahNumber'] as int,
      ayahNumber: json['ayahNumber'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      note: json['note'] as String?,
    );
  }

  /// Convert Bookmark to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'surahNumber': surahNumber,
      'ayahNumber': ayahNumber,
      'createdAt': createdAt.toIso8601String(),
      'note': note,
    };
  }

  /// Check if bookmark has a note
  bool get hasNote => note != null && note!.isNotEmpty;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Bookmark &&
        other.id == id &&
        other.surahNumber == surahNumber &&
        other.ayahNumber == ayahNumber &&
        other.createdAt == createdAt &&
        other.note == note;
  }

  @override
  int get hashCode {
    return Object.hash(
      id,
      surahNumber,
      ayahNumber,
      createdAt,
      note,
    );
  }

  @override
  String toString() {
    return 'Bookmark(id: $id, surahNumber: $surahNumber, '
        'ayahNumber: $ayahNumber, note: $note)';
  }

  /// Create a copy with updated fields
  Bookmark copyWith({
    String? id,
    int? surahNumber,
    int? ayahNumber,
    DateTime? createdAt,
    String? note,
  }) {
    return Bookmark(
      id: id ?? this.id,
      surahNumber: surahNumber ?? this.surahNumber,
      ayahNumber: ayahNumber ?? this.ayahNumber,
      createdAt: createdAt ?? this.createdAt,
      note: note ?? this.note,
    );
  }
}
