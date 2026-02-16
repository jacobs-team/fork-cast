import 'dart:developer';

import 'package:flutter_template/app/core/networking/model/recipe_session.dart';
import 'package:flutter_template/app/core/networking/repository/recipe_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

part 'recipe_bloc.freezed.dart';
part 'recipe_bloc.g.dart';

/// {@template recipe_bloc}
/// A [HydratedBloc] that manages recipe preferences, selections, and AI-generated suggestions.
/// {@endtemplate}
@singleton
class RecipeBloc extends HydratedBloc<RecipeEvent, RecipeState> {
  /// {@macro recipe_bloc}
  RecipeBloc(this._recipeRepository) : super(const RecipeState()) {
    on<RecipeEvent>(
      (recipeEvent, emit) => recipeEvent.map(
        toggleCategory: (value) => _toggleCategory(value, emit),
        toggleIngredient: (value) => _toggleIngredient(value, emit),
        fetchRecipeSuggestions: (value) => _fetchRecipeSuggestions(value, emit),
        toggleFavoriteRecipe: (value) => _toggleFavoriteRecipe(value, emit),
        toggleStrictIngredients: (value) =>
            _toggleStrictIngredients(value, emit),
        addCustomCuisine: (value) => _addCustomCuisine(value, emit),
        removeCustomCuisine: (value) => _removeCustomCuisine(value, emit),
        addCustomIngredient: (value) => _addCustomIngredient(value, emit),
        removeCustomIngredient: (value) => _removeCustomIngredient(value, emit),
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
        strictIngredients: state.strictIngredients,
      );

      // Update favorite status based on stored favorites
      final updatedRecipes = recipes.map((recipe) {
        return recipe.copyWith(
          isFavorite: state.favoriteRecipeIds.contains(recipe.id),
        );
      }).toList();

      // Create a new session
      final session = RecipeSession(
        id: const Uuid().v4(),
        createdAt: DateTime.now(),
        cuisines: List.from(state.selectedCuisines),
        ingredients: List.from(state.selectedIngredients),
        strictIngredients: state.strictIngredients,
        recipes: updatedRecipes,
      );

      // Add to the beginning of the list (most recent first)
      final updatedSessions = [session, ...state.recipeSessions];

      emit(
        state.copyWith(
          recipeSessions: updatedSessions,
          suggestionsLoadingState: RecipeLoadingState.success,
        ),
      );
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

  void _toggleStrictIngredients(
    ToggleStrictIngredients event,
    Emitter<RecipeState> emit,
  ) {
    emit(state.copyWith(strictIngredients: !state.strictIngredients));
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

    // Also remove from selected if it was selected
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

    // Also remove from selected if it was selected
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

  void _toggleFavoriteRecipe(
    ToggleFavoriteRecipe event,
    Emitter<RecipeState> emit,
  ) {
    final updatedFavorites = List<String>.from(state.favoriteRecipeIds);

    if (updatedFavorites.contains(event.recipeId)) {
      updatedFavorites.remove(event.recipeId);
    } else {
      updatedFavorites.add(event.recipeId);
    }

    // Update the favorite status in all recipe sessions
    final updatedSessions = state.recipeSessions.map((session) {
      final updatedRecipes = session.recipes.map((recipe) {
        if (recipe.id == event.recipeId) {
          return recipe.copyWith(isFavorite: !recipe.isFavorite);
        }
        return recipe;
      }).toList();

      return session.copyWith(recipes: updatedRecipes);
    }).toList();

    emit(
      state.copyWith(
        favoriteRecipeIds: updatedFavorites,
        recipeSessions: updatedSessions,
      ),
    );
  }

  @override
  RecipeState fromJson(Map<String, dynamic> json) => RecipeState.fromJson(json);

  @override
  Map<String, dynamic> toJson(RecipeState state) => state.toJson();
}

@Freezed()
abstract class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.toggleCategory(String category) = ToggleCategory;
  const factory RecipeEvent.toggleIngredient(String ingredient) =
      ToggleIngredient;
  const factory RecipeEvent.fetchRecipeSuggestions() = FetchRecipeSuggestions;
  const factory RecipeEvent.toggleFavoriteRecipe(String recipeId) =
      ToggleFavoriteRecipe;
  const factory RecipeEvent.toggleStrictIngredients() = ToggleStrictIngredients;
  const factory RecipeEvent.addCustomCuisine(String cuisine) = AddCustomCuisine;
  const factory RecipeEvent.removeCustomCuisine(String cuisine) =
      RemoveCustomCuisine;
  const factory RecipeEvent.addCustomIngredient(String ingredient) =
      AddCustomIngredient;
  const factory RecipeEvent.removeCustomIngredient(String ingredient) =
      RemoveCustomIngredient;
}

@freezed
abstract class RecipeState with _$RecipeState {
  const factory RecipeState({
    @Default([]) List<String> selectedCuisines,
    @Default([]) List<String> selectedIngredients,
    @Default([]) List<String> customCuisines,
    @Default([]) List<String> customIngredients,
    @Default([]) List<RecipeSession> recipeSessions,
    @Default([]) List<String> favoriteRecipeIds,
    @Default(false) bool strictIngredients,
    @Default(RecipeLoadingState.init)
    RecipeLoadingState suggestionsLoadingState,
    String? suggestionsErrorMessage,
  }) = _RecipeState;

  factory RecipeState.fromJson(Map<String, dynamic> json) =>
      _$RecipeStateFromJson(json);
}

enum RecipeLoadingState { init, loading, success, failure }
