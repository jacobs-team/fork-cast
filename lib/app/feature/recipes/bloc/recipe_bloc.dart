import 'dart:developer';

import 'package:fork_cast/app/app.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'recipe_bloc.freezed.dart';
part 'recipe_bloc.g.dart';

/// {@template recipe_bloc}
/// Manages recipe preferences and AI-generated suggestions with persistent
/// storage.
/// {@endtemplate}
@singleton
class RecipeBloc extends HydratedBloc<RecipeEvent, RecipeState> {
  /// {@macro recipe_bloc}
  RecipeBloc(this._recipeRepository) : super(const RecipeState()) {
    on<RecipeEvent>(
      (recipeEvent, emit) => recipeEvent.map(
        toggleCategory: (value) => _toggleCategory(value, emit),
        toggleIngredient: (value) => _toggleIngredient(value, emit),
        toggleRecipeType: (value) => _toggleRecipeType(value, emit),
        fetchRecipeSuggestions: (value) => _fetchRecipeSuggestions(value, emit),
        loadRecipeImages: (value) => _loadRecipeImages(value, emit),
        toggleFavoriteRecipe: (value) => _toggleFavoriteRecipe(value, emit),
        toggleStrictIngredients: (value) => emit(
          state.copyWith(strictIngredients: !state.strictIngredients),
        ),
        addCustomCuisine: (value) => _addCustomCuisine(value, emit),
        removeCustomCuisine: (value) => _removeCustomCuisine(value, emit),
        addCustomIngredient: (value) => _addCustomIngredient(value, emit),
        removeCustomIngredient: (value) => _removeCustomIngredient(value, emit),
        addCustomRecipeType: (value) => _addCustomRecipeType(value, emit),
        removeCustomRecipeType: (value) => _removeCustomRecipeType(value, emit),
        clearCuisines: (_) => emit(state.copyWith(selectedCuisines: [])),
        clearIngredients: (_) => emit(state.copyWith(selectedIngredients: [])),
        clearRecipeTypes: (_) => emit(state.copyWith(selectedRecipeTypes: [])),
      ),
    );
  }

  final RecipeRepository _recipeRepository;

  void _toggleCategory(
    ToggleCategory event,
    Emitter<RecipeState> emit,
  ) {
    final updatedCuisines = List<String>.from(state.selectedCuisines);

    if (updatedCuisines.contains(event.category)) {
      updatedCuisines.remove(event.category);
    } else {
      updatedCuisines.add(event.category);
    }

    emit(state.copyWith(selectedCuisines: updatedCuisines));
  }

  void _toggleIngredient(
    ToggleIngredient event,
    Emitter<RecipeState> emit,
  ) {
    final updatedIngredients = List<String>.from(state.selectedIngredients);

    if (updatedIngredients.contains(event.ingredient)) {
      updatedIngredients.remove(event.ingredient);
    } else {
      updatedIngredients.add(event.ingredient);
    }

    emit(state.copyWith(selectedIngredients: updatedIngredients));
  }

  Future<void> _fetchRecipeSuggestions(
    FetchRecipeSuggestions event,
    Emitter<RecipeState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          suggestionsLoadingState: RecipeLoadingState.loading,
          suggestionsErrorMessage: null,
        ),
      );

      final recipes = await _recipeRepository.getRecipeSuggestions(
        cuisines: state.selectedCuisines,
        ingredients: state.selectedIngredients,
        recipeTypes: state.selectedRecipeTypes,
        strictIngredients: state.strictIngredients,
      );

      final session = RecipeSession(
        id: const Uuid().v4(),
        createdAt: DateTime.now(),
        cuisines: List.from(state.selectedCuisines),
        ingredients: List.from(state.selectedIngredients),
        recipeTypes: List.from(state.selectedRecipeTypes),
        strictIngredients: state.strictIngredients,
        recipes: recipes,
      );

      final updatedSessions = [session, ...state.recipeSessions];

      emit(
        state.copyWith(
          recipeSessions: updatedSessions,
          suggestionsLoadingState: RecipeLoadingState.success,
        ),
      );

      add(LoadRecipeImages(recipes));
    } catch (e, s) {
      print(e);
      print(s);
      emit(
        state.copyWith(
          suggestionsLoadingState: RecipeLoadingState.failure,
          suggestionsErrorMessage: 'Failed to fetch recipe suggestions',
        ),
      );
      log(e.toString());
    }
  }

  void _addCustomCuisine(
    AddCustomCuisine event,
    Emitter<RecipeState> emit,
  ) {
    final trimmedCuisine = event.cuisine.trim();
    if (trimmedCuisine.isEmpty ||
        state.customCuisines.contains(trimmedCuisine)) {
      return;
    }
    final updatedCustomCuisines = [...state.customCuisines, trimmedCuisine];
    emit(state.copyWith(customCuisines: updatedCustomCuisines));
  }

  void _removeCustomCuisine(
    RemoveCustomCuisine event,
    Emitter<RecipeState> emit,
  ) {
    final updatedCustomCuisines = List<String>.from(state.customCuisines)
      ..remove(event.cuisine);

    final updatedSelectedCuisines = List<String>.from(state.selectedCuisines)
      ..remove(event.cuisine);

    emit(
      state.copyWith(
        customCuisines: updatedCustomCuisines,
        selectedCuisines: updatedSelectedCuisines,
      ),
    );
  }

  void _addCustomIngredient(
    AddCustomIngredient event,
    Emitter<RecipeState> emit,
  ) {
    final trimmedIngredient = event.ingredient.trim();
    if (trimmedIngredient.isEmpty ||
        state.customIngredients.contains(trimmedIngredient)) {
      return;
    }
    final updatedCustomIngredients = [
      ...state.customIngredients,
      trimmedIngredient,
    ];
    emit(state.copyWith(customIngredients: updatedCustomIngredients));
  }

  void _removeCustomIngredient(
    RemoveCustomIngredient event,
    Emitter<RecipeState> emit,
  ) {
    final updatedCustomIngredients = List<String>.from(state.customIngredients)
      ..remove(event.ingredient);

    final updatedSelectedIngredients = List<String>.from(
      state.selectedIngredients,
    )..remove(event.ingredient);

    emit(
      state.copyWith(
        customIngredients: updatedCustomIngredients,
        selectedIngredients: updatedSelectedIngredients,
      ),
    );
  }

  void _toggleRecipeType(
    ToggleRecipeType event,
    Emitter<RecipeState> emit,
  ) {
    final updated = List<String>.from(state.selectedRecipeTypes);
    if (updated.contains(event.recipeType)) {
      updated.remove(event.recipeType);
    } else {
      updated.add(event.recipeType);
    }
    emit(
      state.copyWith(selectedRecipeTypes: updated),
    );
  }

  void _addCustomRecipeType(
    AddCustomRecipeType event,
    Emitter<RecipeState> emit,
  ) {
    final trimmed = event.recipeType.trim();
    if (trimmed.isEmpty || state.customRecipeTypes.contains(trimmed)) {
      return;
    }
    emit(
      state.copyWith(
        customRecipeTypes: [
          ...state.customRecipeTypes,
          trimmed,
        ],
      ),
    );
  }

  void _removeCustomRecipeType(
    RemoveCustomRecipeType event,
    Emitter<RecipeState> emit,
  ) {
    final updatedCustom = List<String>.from(state.customRecipeTypes)
      ..remove(event.recipeType);
    final updatedSelected = List<String>.from(state.selectedRecipeTypes)
      ..remove(event.recipeType);
    emit(
      state.copyWith(
        customRecipeTypes: updatedCustom,
        selectedRecipeTypes: updatedSelected,
      ),
    );
  }

  Future<void> _loadRecipeImages(
    LoadRecipeImages event,
    Emitter<RecipeState> emit,
  ) async {
    for (final recipe in event.recipes) {
      final key = _recipeImageKey(recipe);
      if (state.recipeImagePaths.containsKey(key)) {
        continue;
      }
      try {
        emit(
          state.copyWith(
            recipeImageLoadingStates: {
              ...state.recipeImageLoadingStates,
              key: ImageLoadingState.loading,
            },
          ),
        );
        final path = await _recipeRepository.generateRecipeImage(
          recipeName: recipe.name,
          cuisine: recipe.cuisine,
          mainIngredients: recipe.mainIngredients,
        );
        emit(
          state.copyWith(
            recipeImagePaths: {
              ...state.recipeImagePaths,
              key: path,
            },
            recipeImageLoadingStates: {
              ...state.recipeImageLoadingStates,
              key: ImageLoadingState.success,
            },
          ),
        );
      } catch (e) {
        log(e.toString());
        emit(
          state.copyWith(
            recipeImageLoadingStates: {
              ...state.recipeImageLoadingStates,
              key: ImageLoadingState.failure,
            },
          ),
        );
      }
    }
  }

  void _toggleFavoriteRecipe(
    ToggleFavoriteRecipe event,
    Emitter<RecipeState> emit,
  ) {
    final updatedFavorites = List<Recipe>.from(state.favoriteRecipes);

    if (updatedFavorites.contains(event.recipe)) {
      updatedFavorites.remove(event.recipe);
    } else {
      updatedFavorites.add(event.recipe);
    }

    emit(state.copyWith(favoriteRecipes: updatedFavorites));
  }

  String _recipeImageKey(Recipe recipe) =>
      '${recipe.cuisine}-${recipe.name}'.toLowerCase();

  @override
  RecipeState fromJson(Map<String, dynamic> json) => RecipeState.fromJson(json);

  @override
  Map<String, dynamic> toJson(RecipeState state) => state
      .copyWith(
        recipeImageLoadingStates: const {},
        suggestionsLoadingState: RecipeLoadingState.init,
      )
      .toJson();
}

@Freezed()
abstract class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.toggleCategory(String category) = ToggleCategory;
  const factory RecipeEvent.toggleIngredient(String ingredient) =
      ToggleIngredient;
  const factory RecipeEvent.toggleRecipeType(String recipeType) =
      ToggleRecipeType;
  const factory RecipeEvent.fetchRecipeSuggestions() = FetchRecipeSuggestions;
  const factory RecipeEvent.loadRecipeImages(List<Recipe> recipes) =
      LoadRecipeImages;
  const factory RecipeEvent.toggleFavoriteRecipe(Recipe recipe) =
      ToggleFavoriteRecipe;
  const factory RecipeEvent.toggleStrictIngredients() = ToggleStrictIngredients;
  const factory RecipeEvent.addCustomCuisine(String cuisine) = AddCustomCuisine;
  const factory RecipeEvent.removeCustomCuisine(String cuisine) =
      RemoveCustomCuisine;
  const factory RecipeEvent.addCustomIngredient(String ingredient) =
      AddCustomIngredient;
  const factory RecipeEvent.removeCustomIngredient(String ingredient) =
      RemoveCustomIngredient;
  const factory RecipeEvent.addCustomRecipeType(String recipeType) =
      AddCustomRecipeType;
  const factory RecipeEvent.removeCustomRecipeType(String recipeType) =
      RemoveCustomRecipeType;
  const factory RecipeEvent.clearCuisines() = ClearCuisines;
  const factory RecipeEvent.clearIngredients() = ClearIngredients;
  const factory RecipeEvent.clearRecipeTypes() = ClearRecipeTypes;
}

@freezed
abstract class RecipeState with _$RecipeState {
  const factory RecipeState({
    @Default([]) List<String> selectedCuisines,
    @Default([]) List<String> selectedIngredients,
    @Default([]) List<String> selectedRecipeTypes,
    @Default([]) List<String> customCuisines,
    @Default([]) List<String> customIngredients,
    @Default([]) List<String> customRecipeTypes,
    @Default([]) List<RecipeSession> recipeSessions,
    @Default([]) List<Recipe> favoriteRecipes,
    @Default(false) bool strictIngredients,
    @Default({}) Map<String, String> recipeImagePaths,
    @Default({}) Map<String, ImageLoadingState> recipeImageLoadingStates,
    @Default(RecipeLoadingState.init)
    RecipeLoadingState suggestionsLoadingState,
    String? suggestionsErrorMessage,
  }) = _RecipeState;

  factory RecipeState.fromJson(
    Map<String, dynamic> json,
  ) => _$RecipeStateFromJson(json);
}

enum RecipeLoadingState { init, loading, success, failure }

enum ImageLoadingState { loading, success, failure }



  // Future<void> _fetchAdditionalRecipes(
  //   FetchAdditionalRecipes event,
  //   Emitter<RecipeState> emit,
  // ) async {
  //   final sessionIndex = state.recipeSessions.indexWhere(
  //     (s) => s.id == event.sessionId,
  //   );
  //   if (sessionIndex == -1) return;

  //   final session = state.recipeSessions[sessionIndex];
  //   if (session.recipes.length >= event.targetCount) {
  //     return;
  //   }

  //   try {
  //     final recipe =
  //         await _recipeRepository.getAdditionalRecipeSuggestion(
  //       cuisines: session.cuisines,
  //       ingredients: session.ingredients,
  //       recipeTypes: session.recipeTypes,
  //       strictIngredients: session.strictIngredients,
  //       excludeRecipeNames:
  //           session.recipes.map((r) => r.name).toList(),
  //     );

  //     final updatedRecipes = [...session.recipes, recipe];
  //     final updatedSession =
  //         session.copyWith(recipes: updatedRecipes);
  //     final updatedSessions =
  //         List<RecipeSession>.from(state.recipeSessions);
  //     updatedSessions[sessionIndex] = updatedSession;

  //     emit(
  //       state.copyWith(recipeSessions: updatedSessions),
  //     );

  //     add(LoadRecipeImages([recipe]));

  //     if (updatedRecipes.length < event.targetCount) {
  //       add(
  //         RecipeEvent.fetchAdditionalRecipes(
  //           sessionId: event.sessionId,
  //           targetCount: event.targetCount,
  //         ),
  //       );
  //     }
  //   } catch (e, s) {
  //     print(e);
  //     print(s);
  //     log(e.toString());
  //   }
  // }
