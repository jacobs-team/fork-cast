// coverage:ignore-file

import 'dart:io';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

/// {@template file_cache_service}
/// A service responsible for managing local file persistence and caching.
/// {@endtemplate}
@singleton
class FileCacheService {
  /// Downloads from [url] and saves permanently to app storage.
  /// Returns the local file path.
  Future<String> downloadAndSave(String url, String filename) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$filename');
    if (file.existsSync()) return file.path;
    final cached = await DefaultCacheManager().getSingleFile(url);
    await cached.copy(file.path);
    return file.path;
  }

  /// Retrieves a file from the cache or downloads it if it does not exist.
  Future<File> getFile(String url) async {
    return DefaultCacheManager().getSingleFile(url);
  }

  /// Removes a specific file from the local cache.
  Future<void> removeFile(String url) async {
    await DefaultCacheManager().removeFile(url);
  }

  /// Removes all files from local cache.
  Future<void> emptyCache() async {
    await DefaultCacheManager().emptyCache();
  }
}
