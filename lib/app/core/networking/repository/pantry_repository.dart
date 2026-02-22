import 'dart:convert';

import 'package:fork_cast/app/core/core.dart';
import 'package:injectable/injectable.dart';

/// {@template pantry_repository}
/// Handles data operations for AI-powered pantry item extraction.
/// {@endtemplate}
@singleton
class PantryRepository {
  /// {@macro pantry_repository}
  PantryRepository(this._pantryApi);

  final PantryApi _pantryApi;

  /// Extracts categorized items from an image.
  Future<List<PantryItem>> extractItemsFromImage({
    required String base64Image,
    required String mimeType,
  }) async {
    final response = await _pantryApi.extractItemsFromImage(
      base64Image: base64Image,
      mimeType: mimeType,
    );
    return _parseItems(response.data);
  }

  /// Extracts categorized items from transcribed speech text.
  Future<List<PantryItem>> extractItemsFromText({
    required String text,
  }) async {
    final response = await _pantryApi.extractItemsFromText(text: text);
    return _parseItems(response.data);
  }

  /// Categorizes a list of item names.
  Future<List<PantryItem>> categorizeItems({
    required List<String> items,
  }) async {
    final response = await _pantryApi.categorizeItems(items: items);
    return _parseItems(response.data);
  }

  List<PantryItem> _parseItems(dynamic data) {
    final openAIResponse = mapJson(data, OpenAIApiResponse.fromJson);
    final messageContent = openAIResponse.choices.first.message.content;
    final jsonData = jsonDecode(messageContent) as Map<String, dynamic>;
    final items = (jsonData['items'] as List<dynamic>)
        .map((e) => _parseItem(e as Map<String, dynamic>))
        .toList();
    final seen = <String>{};
    return items.where((item) => seen.add(item.name)).toList();
  }

  PantryItem _parseItem(Map<String, dynamic> json) {
    final name = json['name'] as String;
    final categoryStr = json['category'] as String? ?? 'Other';
    final category = PantryCategory.values.firstWhere(
      (c) => c.displayName == categoryStr,
      orElse: () => PantryCategory.other,
    );
    return PantryItem(name: name, category: category);
  }
}
