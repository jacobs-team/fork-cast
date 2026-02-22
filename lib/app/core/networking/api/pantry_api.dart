import 'package:dio/dio.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/environment.dart';
import 'package:injectable/injectable.dart';

/// {@template pantry_api}
/// AI-powered pantry item extraction using OpenAI GPT-4o vision and text APIs.
/// {@endtemplate}
@singleton
class PantryApi {
  /// {@macro pantry_api}
  PantryApi(this._client);

  final RestClient _client;

  /// Extracts grocery item names from an image (base64-encoded).
  Future<Response<dynamic>> extractItemsFromImage({
    required String base64Image,
    required String mimeType,
  }) async {
    return _client.post(
      Endpoints.pantry.extractItems,
      body: {
        'model': 'gpt-4o',
        'response_format': {'type': 'json_object'},
        'messages': [
          {
            'role': 'system',
            'content': _systemPrompt,
          },
          {
            'role': 'user',
            'content': [
              {
                'type': 'image_url',
                'image_url': {
                  'url': 'data:$mimeType;base64,$base64Image',
                },
              },
              {
                'type': 'text',
                'text':
                    'Identify all grocery/food items visible in this '
                    'image. This could be a photo of a receipt, a fridge, '
                    'a pantry shelf, or groceries on a counter. '
                    'Extract just the food item names.',
              },
            ],
          },
        ],
        'max_tokens': 1000,
        'temperature': 0.3,
      },
      headers: {
        'Authorization': 'Bearer ${EnvironmentConfig.aiApiKey}',
        'Content-Type': 'application/json',
      },
    );
  }

  /// Extracts grocery item names from transcribed speech text.
  Future<Response<dynamic>> extractItemsFromText({
    required String text,
  }) async {
    return _client.post(
      Endpoints.pantry.extractItems,
      body: {
        'model': 'gpt-4o',
        'response_format': {'type': 'json_object'},
        'messages': [
          {
            'role': 'system',
            'content': _systemPrompt,
          },
          {
            'role': 'user',
            'content':
                'Extract grocery/food item names from '
                'this text: "$text"',
          },
        ],
        'max_tokens': 2500,
        'temperature': 0.2,
      },
      headers: {
        'Authorization': 'Bearer ${EnvironmentConfig.aiApiKey}',
        'Content-Type': 'application/json',
      },
    );
  }

  /// Categorizes a list of item names without extraction.
  Future<Response<dynamic>> categorizeItems({
    required List<String> items,
  }) async {
    return _client.post(
      Endpoints.pantry.extractItems,
      body: {
        'model': 'gpt-4o',
        'response_format': {'type': 'json_object'},
        'messages': [
          {
            'role': 'system',
            'content': _categorizePrompt,
          },
          {
            'role': 'user',
            'content': 'Categorize these items: ${items.join(", ")}',
          },
        ],
        'max_tokens': 2500,
        'temperature': 0.1,
      },
      headers: {
        'Authorization': 'Bearer ${EnvironmentConfig.aiApiKey}',
        'Content-Type': 'application/json',
      },
    );
  }

  static const _categoryList =
      '"Produce", "Dairy", "Meat & Seafood", "Pantry Staples", "Frozen", '
      '"Beverages", "Condiments & Sauces", "Baking", "Snacks", "Other"';

  static const _systemPrompt =
      'You extract grocery and food item names from images or text. '
      'Return a JSON object with a single key "items" containing an array '
      'of objects. Each object has "name" (string) and "category" (string). '
      'The "name" is a common, human-readable ingredient name that a cook '
      'would recognize. The "category" must be exactly one of: '
      '$_categoryList. '
      'Translate abbreviated, truncated, or coded receipt text into real '
      'names (e.g., "SRICRACHA SRC" -> "Sriracha Sauce", '
      '"GRN BNLS CHKN BR" -> "Chicken Breast"). '
      'No quantities, no brands, no SKUs, no store-specific codes. '
      'Capitalize each word for names. Remove duplicates. '
      'Always return valid JSON.';

  static const _categorizePrompt =
      'You categorize grocery and food items. '
      'Return a JSON object with a single key "items" containing an array '
      'of objects. Each object has "name" (string, capitalize each word) '
      'and "category" (string). '
      'The "category" must be exactly one of: '
      '$_categoryList. '
      'Always return valid JSON.';
}
