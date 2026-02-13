import '../models/bookmark.dart';

/// Abstract repository for user-related operations
abstract class UserRepository {
  /// Sign in with email and password
  Future<void> signIn(String email, String password);

  /// Sign up with email and password
  Future<void> signUp(String email, String password);

  /// Sign out the current user
  Future<void> signOut();

  /// Get current user information
  Future<Map<String, dynamic>?> getCurrentUser();

  /// Check if user is signed in
  Future<bool> isSignedIn();

  /// Get all bookmarks for the current user
  Future<List<Bookmark>> getBookmarks();

  /// Add a new bookmark
  Future<void> addBookmark(Bookmark bookmark);

  /// Remove a bookmark
  Future<void> removeBookmark(String bookmarkId);

  /// Check if an Ayah is bookmarked
  Future<bool> isBookmarked(int surahNumber, int ayahNumber);

  /// Get bookmark for a specific Ayah if it exists
  Future<Bookmark?> getBookmark(int surahNumber, int ayahNumber);

  /// Get reading progress (last read position)
  Future<Map<String, int>?> getReadingProgress();

  /// Update reading progress
  Future<void> updateReadingProgress(int surahNumber, int ayahNumber);

  /// Get user preferences
  Future<Map<String, dynamic>> getUserPreferences();

  /// Update user preferences
  Future<void> updateUserPreferences(Map<String, dynamic> preferences);

  /// Get specific preference value
  Future<T?> getPreference<T>(String key);

  /// Set specific preference value
  Future<void> setPreference<T>(String key, T value);

  /// Reset user data (for testing or logout)
  Future<void> resetUserData();
}
