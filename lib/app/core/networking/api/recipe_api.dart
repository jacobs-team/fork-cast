import 'package:dio/dio.dart';
import 'package:fork_cast/app/core/core.dart';
import 'package:fork_cast/environment.dart';
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
    required List<String> recipeTypes,
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
                'You are a professional recipe creator. '
                'Generate diverse, detailed, and '
                'actionable recipes in JSON format only. '
                'Always return valid JSON with no markdown '
                'formatting or code blocks.',
          },
          {
            'role': 'user',
            'content': _buildPrompt(
              cuisines,
              ingredients,
              recipeTypes,
              strictIngredients,
            ),
          },
        ],
        'max_tokens': 5000,
        'temperature': strictIngredients ? 0.6 : 0.8,
      },
      headers: {
        'Authorization': 'Bearer ${EnvironmentConfig.aiApiKey}',
        'Content-Type': 'application/json',
      },
    );
  }

  /// Generates an image for a recipe using DALL-E 3.
  Future<Response<dynamic>> generateRecipeImage({
    required String recipeName,
    required String cuisine,
    required List<String> mainIngredients,
    required List<String> instructions,
  }) async {
    return _client.post(
      Endpoints.recipe.imageGeneration,
      body: {
        'model': 'dall-e-3',
        'prompt': _buildImagePrompt(
          recipeName,
          cuisine,
          mainIngredients,
          instructions,
        ),
        'n': 1,
        'size': '1024x1024',
      },
      headers: {
        'Authorization': 'Bearer ${EnvironmentConfig.aiApiKey}',
        'Content-Type': 'application/json',
      },
    );
  }

  String _buildImagePrompt(
    String recipeName,
    String cuisine,
    List<String> mainIngredients,
    List<String> instructions,
  ) {
    final ingredientsText = mainIngredients.join(', ');
    final stepsText = instructions.join('. ');
    return 'A professional, appetizing food photography '
        'shot of "$recipeName", a $cuisine dish featuring '
        '$ingredientsText. The dish is prepared as follows: '
        '$stepsText. Show the finished plated result. '
        'Beautifully plated on a clean surface with '
        'natural lighting. No text or labels. Only depict the '
        'ingredients listed in the form they would be in given the '
        'instructions, For example dont show whole mangos if '
        'the mangos were instructed to be blended.';
  }

  String _buildPrompt(
    List<String> cuisines,
    List<String> ingredients,
    List<String> recipeTypes,
    bool strictIngredients,
  ) {
    const minRecipes = 5;
    const maxRecipes = 8;
    final cuisinesText = cuisines.isEmpty
        ? 'diverse global cuisines (Italian, Mexican, '
              'Asian, Mediterranean, French, etc.)'
        : cuisines.join(', ');
    final ingredientsText = ingredients.isEmpty
        ? 'common ingredients available in most kitchens'
        : ingredients.join(', ');
    final recipeTypesText = recipeTypes.isEmpty
        ? 'any type (meals, snacks, desserts, etc.)'
        : recipeTypes.join(', ');

    final ingredientConstraint = strictIngredients
        ? '⚠️ STRICT MODE: Recipes must ONLY use the '
              'specified ingredients plus basic pantry items '
              '(salt, pepper, oil, sugar, water, butter, '
              'flour, garlic, onion). No other ingredients '
              'allowed.'
        : '✓ FLEXIBLE MODE: Use specified ingredients as '
              'the foundation. You may add complementary '
              'ingredients and common pantry staples freely.';

    const countRange = '$minRecipes to $maxRecipes';

    return '''
You are generating recipe suggestions. Follow these constraints strictly:

INPUT PARAMETERS:
- Cuisines: $cuisinesText
- Ingredients: $ingredientsText
- Recipe Types: $recipeTypesText
- Ingredient Mode: $ingredientConstraint

OUTPUT REQUIREMENTS:
Generate $countRange diverse recipes as a JSON object. Return ONLY valid JSON with no markdown, no code blocks, no explanation text.

JSON Structure:
{
  "recipes": [
    {
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
✓ ${ingredients.isEmpty ? 'Set isMainIngredient: true for the 3 primary protein/vegetable components of the dish' : "Set isMainIngredient: true for ingredients from the user's selected list ($ingredientsText)"}
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
✓ Vary difficulty levels
✓ Vary cooking methods
✓ If multiple cuisines selected, distribute recipes across them
✓ Each recipe should feel distinct
✓ Mix quick recipes with longer ones

VALIDATION CHECKLIST (verify before returning):
□ Between $countRange recipes in the array
□ All difficulty values are exactly one of: Easy, Medium, Hard (case-sensitive)
□ All recipes have instruction steps
□ Every recipe has a complete ingredients array with ALL ingredients listed
□ Each ingredient has name, amount, and isMainIngredient fields
□ ${ingredients.isEmpty ? 'isMainIngredient is true for the primary components' : 'isMainIngredient is true only for user-selected ingredients'}
□ Every instruction references ingredients that exist in the ingredients list
□ ${strictIngredients ? 'All recipes ONLY use specified ingredients + basic pantry items listed above' : 'All recipes feature the specified ingredients prominently'}
□ ${recipeTypes.isEmpty ? 'Mix of recipe types (meals, snacks, desserts, drinks)' : 'All recipes match one of the requested types: $recipeTypesText'}
□ Valid JSON format (no trailing commas, proper quotes, no comments)
□ No markdown formatting (no ```, no code blocks)
''';
  }
}



  //   /// Fetches a single additional recipe suggestion,
  //   /// excluding already-generated recipes by name.
  //   Future<Response<dynamic>> getAdditionalRecipeSuggestion({
  //     required List<String> cuisines,
  //     required List<String> ingredients,
  //     required List<String> recipeTypes,
  //     required bool strictIngredients,
  //     required List<String> excludeRecipeNames,
  //   }) async {
  //     return _client.post(
  //       Endpoints.recipe.suggestions,
  //       body: {
  //         'model': 'gpt-4o',
  //         'response_format': {'type': 'json_object'},
  //         'messages': [
  //           {
  //             'role': 'system',
  //             'content':
  //                 'You are a professional recipe creator. '
  //                 'Generate diverse, detailed, and '
  //                 'actionable recipes in JSON format '
  //                 'only. Always return valid JSON with '
  //                 'no markdown formatting or code blocks.',
  //           },
  //           {
  //             'role': 'user',
  //             'content': _buildSingleRecipePrompt(
  //               cuisines,
  //               ingredients,
  //               recipeTypes,
  //               strictIngredients,
  //               excludeRecipeNames,
  //             ),
  //           },
  //         ],
  //         'max_tokens': 2000,
  //         'temperature': 0.9,
  //       },
  //       headers: {
  //         'Authorization': 'Bearer ${EnvironmentConfig.aiApiKey}',
  //         'Content-Type': 'application/json',
  //       },
  //     );
  //   }

  //   String _buildSingleRecipePrompt(
  //     List<String> cuisines,
  //     List<String> ingredients,
  //     List<String> recipeTypes,
  //     bool strictIngredients,
  //     List<String> excludeRecipeNames,
  //   ) {
  //     final cuisinesText = cuisines.isEmpty
  //         ? 'any global cuisine'
  //         : cuisines.join(', ');
  //     final ingredientsText = ingredients.isEmpty
  //         ? 'common ingredients'
  //         : ingredients.join(', ');
  //     final recipeTypesText = recipeTypes.isEmpty
  //         ? 'any type'
  //         : recipeTypes.join(', ');
  //     final excludeText = excludeRecipeNames.isEmpty
  //         ? 'None'
  //         : excludeRecipeNames.join(', ');

  //     final ingredientConstraint = strictIngredients
  //         ? 'STRICT: Only use specified ingredients '
  //               'plus basic pantry items.'
  //         : 'FLEXIBLE: Use specified ingredients as '
  //               'a base, add complementary ones freely.';

  //     return '''
  // Generate EXACTLY 1 unique recipe as JSON.

  // Cuisines: $cuisinesText
  // Ingredients: $ingredientsText
  // Recipe Types: $recipeTypesText
  // Mode: $ingredientConstraint

  // DO NOT duplicate these recipes: $excludeText

  // JSON Structure:
  // {
  //   "recipes": [
  //     {
  //       "name": "Recipe Name",
  //       "cuisine": "Cuisine",
  //       "mainIngredients": ["Ing1", "Ing2"],
  //       "ingredients": [
  //         {"name": "Ing1", "amount": "1 cup", "isMainIngredient": true}
  //       ],
  //       "description": "2-3 sentences",
  //       "prepTime": "30 minutes",
  //       "difficulty": "Easy|Medium|Hard",
  //       "servings": 4,
  //       "instructions": ["Step 1", "Step 2"]
  //     }
  //   ]
  // }

  // Rules:
  // - instruction steps with measurements and timing
  // - All ingredients listed with amounts
  // - isMainIngredient true for user-selected ingredients
  // - Must be distinct from excluded recipes
  // ''';
  //   }
