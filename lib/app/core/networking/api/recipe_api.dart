import 'package:dio/dio.dart';
import 'package:flutter_template/app/core/core.dart';
import 'package:flutter_template/environment.dart';
import 'package:injectable/injectable.dart';

/// {@template recipe_api}
/// A service class for AI-powered recipe suggestions using OpenAI API.
///
/// This class uses RestClient configured with OpenAI API settings
/// and leverages [Endpoints] for centralized route management.
/// {@endtemplate}
@singleton
class RecipeApi {
  /// {@macro recipe_api}
  RecipeApi(this._client);

  final RestClient _client;

  /// Fetches recipe suggestions from OpenAI based on user preferences.
  Future<Response<dynamic>> getRecipeSuggestions({
    required List<String> cuisines,
    required List<String> ingredients,
    required bool strictIngredients,
  }) async {
    return _client.post(
      Endpoints.recipe.suggestions,
      body: {
        'model': 'gpt-4o',
        'response_format': {'type': 'json_object'},
        'messages': [
          {
            'role': 'system',
            'content':
                'You are a professional recipe creator. Generate diverse, detailed, and actionable recipes in JSON format only. Always return valid JSON with no markdown formatting or code blocks.',
          },
          {
            'role': 'user',
            'content': _buildPrompt(cuisines, ingredients, strictIngredients),
          },
        ],
        'max_tokens': 6000,
        'temperature': strictIngredients ? 0.6 : 0.8,
      },
      headers: {
        'Authorization': 'Bearer ${EnvironmentConfig.aiApiKey}',
        'Content-Type': 'application/json',
      },
    );
  }

  String _buildPrompt(
    List<String> cuisines,
    List<String> ingredients,
    bool strictIngredients,
  ) {
    final cuisinesText = cuisines.isEmpty
        ? 'diverse global cuisines (Italian, Mexican, Asian, Mediterranean, French, etc.)'
        : cuisines.join(', ');
    final ingredientsText = ingredients.isEmpty
        ? 'common ingredients available in most kitchens'
        : ingredients.join(', ');

    final ingredientConstraint = strictIngredients
        ? '⚠️ STRICT MODE: Recipes must ONLY use the specified ingredients plus basic pantry items (salt, pepper, oil, sugar, water, butter, flour, garlic, onion). No other ingredients allowed.'
        : '✓ FLEXIBLE MODE: Use specified ingredients as the foundation. You may add complementary ingredients and common pantry staples freely.';

    return '''
You are generating recipe suggestions. Follow these constraints strictly:

INPUT PARAMETERS:
- Cuisines: $cuisinesText
- Ingredients: $ingredientsText
- Ingredient Mode: $ingredientConstraint

OUTPUT REQUIREMENTS:
Generate EXACTLY 8 diverse recipes as a JSON object. Return ONLY valid JSON with no markdown, no code blocks, no explanation text.

JSON Structure:
{
  "recipes": [
    {
      "id": "cuisine-mainIngredient-number",
      "name": "Recipe Name (max 60 characters)",
      "cuisine": "One of the requested cuisines",
      "mainIngredients": ["Ingredient1", "Ingredient2", "Ingredient3"],
      "ingredients": [
        {"name": "Ingredient1", "amount": "1.5 lbs", "isMainIngredient": true},
        {"name": "Ingredient2", "amount": "1 lb", "isMainIngredient": true},
        {"name": "Olive Oil", "amount": "2 tbsp", "isMainIngredient": false},
        {"name": "Salt", "amount": "1 tsp", "isMainIngredient": false}
      ],
      "description": "2-3 sentence description highlighting what makes this dish special and appealing",
      "prepTime": "total time in format: '30 minutes' or '1 hour 15 minutes'",
      "difficulty": "Easy|Medium|Hard",
      "servings": 2-6,
      "instructions": [
        "Step with measurements (1 cup, 2 tbsp, 3 cloves) and timing (5-7 minutes at 350°F)",
        "...5-10 actionable steps total"
      ]
    }
  ]
}

INGREDIENTS LIST RULES:
✓ Every recipe must have a complete ingredients array with ALL ingredients needed
✓ Each ingredient must have: name, amount (with specific measurements), and isMainIngredient flag
✓ Set isMainIngredient: true for ingredients from the user's selected list ($ingredientsText)
✓ Set isMainIngredient: false for all other ingredients (pantry items, complementary ingredients)
✓ Amount must be specific: "1.5 lbs", "2 cups", "3 cloves", "1/4 tsp", "8 oz"
✓ List ingredients in order of use in the recipe
✓ Include ALL ingredients mentioned in instructions

INSTRUCTION QUALITY RULES:
✓ Every step must reference ingredients from the ingredients list
✓ Include temperatures (°F) for all cooking/baking steps
✓ Include precise timing for each cooking action (e.g., "sauté for 3-4 minutes", "bake for 25-30 minutes")
✓ Steps must be actionable - anyone should be able to follow without prior cooking knowledge
✓ Start each step with action verbs: "Dice", "Season", "Heat", "Add", "Cook", "Stir", "Combine", "Bake"
✓ Include resting times where relevant (e.g., "let rest for 5 minutes before slicing")

DIVERSITY RULES:
✓ Vary difficulty levels (2-3 Easy, 3-4 Medium, 1-2 Hard)
✓ Vary cooking methods (baking, sautéing, grilling, roasting, slow cooking, steaming, etc.)
✓ If multiple cuisines selected, distribute recipes across them evenly
✓ Each recipe should feel distinct - avoid repetitive dishes
✓ Mix quick recipes (20-30 min) with longer ones (45-60+ min)

VALIDATION CHECKLIST (verify before returning):
□ Exactly 8 recipes in the array
□ All recipe IDs are unique and follow format: cuisine-ingredient-number
□ All difficulty values are exactly one of: Easy, Medium, Hard (case-sensitive)
□ All recipes have 5-10 instruction steps
□ Every recipe has a complete ingredients array with ALL ingredients listed
□ Each ingredient has name, amount, and isMainIngredient fields
□ isMainIngredient is true only for user-selected ingredients
□ Every instruction references ingredients that exist in the ingredients list
□ ${strictIngredients ? 'All recipes ONLY use specified ingredients + basic pantry items listed above' : 'All recipes feature the specified ingredients prominently'}
□ Valid JSON format (no trailing commas, proper quotes, no comments)
□ No markdown formatting (no ```, no code blocks)
''';
  }
}
