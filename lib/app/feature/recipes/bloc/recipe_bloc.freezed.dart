// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecipeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeEvent()';
}


}

/// @nodoc
class $RecipeEventCopyWith<$Res>  {
$RecipeEventCopyWith(RecipeEvent _, $Res Function(RecipeEvent) __);
}


/// Adds pattern-matching-related methods to [RecipeEvent].
extension RecipeEventPatterns on RecipeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ToggleCategory value)?  toggleCategory,TResult Function( ToggleIngredient value)?  toggleIngredient,TResult Function( ToggleRecipeType value)?  toggleRecipeType,TResult Function( FetchRecipeSuggestions value)?  fetchRecipeSuggestions,TResult Function( LoadRecipeImages value)?  loadRecipeImages,TResult Function( ToggleFavoriteRecipe value)?  toggleFavoriteRecipe,TResult Function( ToggleStrictIngredients value)?  toggleStrictIngredients,TResult Function( AddCustomCuisine value)?  addCustomCuisine,TResult Function( RemoveCustomCuisine value)?  removeCustomCuisine,TResult Function( AddCustomIngredient value)?  addCustomIngredient,TResult Function( RemoveCustomIngredient value)?  removeCustomIngredient,TResult Function( AddCustomRecipeType value)?  addCustomRecipeType,TResult Function( RemoveCustomRecipeType value)?  removeCustomRecipeType,TResult Function( ClearCuisines value)?  clearCuisines,TResult Function( ClearIngredients value)?  clearIngredients,TResult Function( ClearRecipeTypes value)?  clearRecipeTypes,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that);case ToggleIngredient() when toggleIngredient != null:
return toggleIngredient(_that);case ToggleRecipeType() when toggleRecipeType != null:
return toggleRecipeType(_that);case FetchRecipeSuggestions() when fetchRecipeSuggestions != null:
return fetchRecipeSuggestions(_that);case LoadRecipeImages() when loadRecipeImages != null:
return loadRecipeImages(_that);case ToggleFavoriteRecipe() when toggleFavoriteRecipe != null:
return toggleFavoriteRecipe(_that);case ToggleStrictIngredients() when toggleStrictIngredients != null:
return toggleStrictIngredients(_that);case AddCustomCuisine() when addCustomCuisine != null:
return addCustomCuisine(_that);case RemoveCustomCuisine() when removeCustomCuisine != null:
return removeCustomCuisine(_that);case AddCustomIngredient() when addCustomIngredient != null:
return addCustomIngredient(_that);case RemoveCustomIngredient() when removeCustomIngredient != null:
return removeCustomIngredient(_that);case AddCustomRecipeType() when addCustomRecipeType != null:
return addCustomRecipeType(_that);case RemoveCustomRecipeType() when removeCustomRecipeType != null:
return removeCustomRecipeType(_that);case ClearCuisines() when clearCuisines != null:
return clearCuisines(_that);case ClearIngredients() when clearIngredients != null:
return clearIngredients(_that);case ClearRecipeTypes() when clearRecipeTypes != null:
return clearRecipeTypes(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ToggleCategory value)  toggleCategory,required TResult Function( ToggleIngredient value)  toggleIngredient,required TResult Function( ToggleRecipeType value)  toggleRecipeType,required TResult Function( FetchRecipeSuggestions value)  fetchRecipeSuggestions,required TResult Function( LoadRecipeImages value)  loadRecipeImages,required TResult Function( ToggleFavoriteRecipe value)  toggleFavoriteRecipe,required TResult Function( ToggleStrictIngredients value)  toggleStrictIngredients,required TResult Function( AddCustomCuisine value)  addCustomCuisine,required TResult Function( RemoveCustomCuisine value)  removeCustomCuisine,required TResult Function( AddCustomIngredient value)  addCustomIngredient,required TResult Function( RemoveCustomIngredient value)  removeCustomIngredient,required TResult Function( AddCustomRecipeType value)  addCustomRecipeType,required TResult Function( RemoveCustomRecipeType value)  removeCustomRecipeType,required TResult Function( ClearCuisines value)  clearCuisines,required TResult Function( ClearIngredients value)  clearIngredients,required TResult Function( ClearRecipeTypes value)  clearRecipeTypes,}){
final _that = this;
switch (_that) {
case ToggleCategory():
return toggleCategory(_that);case ToggleIngredient():
return toggleIngredient(_that);case ToggleRecipeType():
return toggleRecipeType(_that);case FetchRecipeSuggestions():
return fetchRecipeSuggestions(_that);case LoadRecipeImages():
return loadRecipeImages(_that);case ToggleFavoriteRecipe():
return toggleFavoriteRecipe(_that);case ToggleStrictIngredients():
return toggleStrictIngredients(_that);case AddCustomCuisine():
return addCustomCuisine(_that);case RemoveCustomCuisine():
return removeCustomCuisine(_that);case AddCustomIngredient():
return addCustomIngredient(_that);case RemoveCustomIngredient():
return removeCustomIngredient(_that);case AddCustomRecipeType():
return addCustomRecipeType(_that);case RemoveCustomRecipeType():
return removeCustomRecipeType(_that);case ClearCuisines():
return clearCuisines(_that);case ClearIngredients():
return clearIngredients(_that);case ClearRecipeTypes():
return clearRecipeTypes(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ToggleCategory value)?  toggleCategory,TResult? Function( ToggleIngredient value)?  toggleIngredient,TResult? Function( ToggleRecipeType value)?  toggleRecipeType,TResult? Function( FetchRecipeSuggestions value)?  fetchRecipeSuggestions,TResult? Function( LoadRecipeImages value)?  loadRecipeImages,TResult? Function( ToggleFavoriteRecipe value)?  toggleFavoriteRecipe,TResult? Function( ToggleStrictIngredients value)?  toggleStrictIngredients,TResult? Function( AddCustomCuisine value)?  addCustomCuisine,TResult? Function( RemoveCustomCuisine value)?  removeCustomCuisine,TResult? Function( AddCustomIngredient value)?  addCustomIngredient,TResult? Function( RemoveCustomIngredient value)?  removeCustomIngredient,TResult? Function( AddCustomRecipeType value)?  addCustomRecipeType,TResult? Function( RemoveCustomRecipeType value)?  removeCustomRecipeType,TResult? Function( ClearCuisines value)?  clearCuisines,TResult? Function( ClearIngredients value)?  clearIngredients,TResult? Function( ClearRecipeTypes value)?  clearRecipeTypes,}){
final _that = this;
switch (_that) {
case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that);case ToggleIngredient() when toggleIngredient != null:
return toggleIngredient(_that);case ToggleRecipeType() when toggleRecipeType != null:
return toggleRecipeType(_that);case FetchRecipeSuggestions() when fetchRecipeSuggestions != null:
return fetchRecipeSuggestions(_that);case LoadRecipeImages() when loadRecipeImages != null:
return loadRecipeImages(_that);case ToggleFavoriteRecipe() when toggleFavoriteRecipe != null:
return toggleFavoriteRecipe(_that);case ToggleStrictIngredients() when toggleStrictIngredients != null:
return toggleStrictIngredients(_that);case AddCustomCuisine() when addCustomCuisine != null:
return addCustomCuisine(_that);case RemoveCustomCuisine() when removeCustomCuisine != null:
return removeCustomCuisine(_that);case AddCustomIngredient() when addCustomIngredient != null:
return addCustomIngredient(_that);case RemoveCustomIngredient() when removeCustomIngredient != null:
return removeCustomIngredient(_that);case AddCustomRecipeType() when addCustomRecipeType != null:
return addCustomRecipeType(_that);case RemoveCustomRecipeType() when removeCustomRecipeType != null:
return removeCustomRecipeType(_that);case ClearCuisines() when clearCuisines != null:
return clearCuisines(_that);case ClearIngredients() when clearIngredients != null:
return clearIngredients(_that);case ClearRecipeTypes() when clearRecipeTypes != null:
return clearRecipeTypes(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String category)?  toggleCategory,TResult Function( String ingredient)?  toggleIngredient,TResult Function( String recipeType)?  toggleRecipeType,TResult Function()?  fetchRecipeSuggestions,TResult Function( List<Recipe> recipes)?  loadRecipeImages,TResult Function( Recipe recipe)?  toggleFavoriteRecipe,TResult Function()?  toggleStrictIngredients,TResult Function( String cuisine)?  addCustomCuisine,TResult Function( String cuisine)?  removeCustomCuisine,TResult Function( String ingredient)?  addCustomIngredient,TResult Function( String ingredient)?  removeCustomIngredient,TResult Function( String recipeType)?  addCustomRecipeType,TResult Function( String recipeType)?  removeCustomRecipeType,TResult Function()?  clearCuisines,TResult Function()?  clearIngredients,TResult Function()?  clearRecipeTypes,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that.category);case ToggleIngredient() when toggleIngredient != null:
return toggleIngredient(_that.ingredient);case ToggleRecipeType() when toggleRecipeType != null:
return toggleRecipeType(_that.recipeType);case FetchRecipeSuggestions() when fetchRecipeSuggestions != null:
return fetchRecipeSuggestions();case LoadRecipeImages() when loadRecipeImages != null:
return loadRecipeImages(_that.recipes);case ToggleFavoriteRecipe() when toggleFavoriteRecipe != null:
return toggleFavoriteRecipe(_that.recipe);case ToggleStrictIngredients() when toggleStrictIngredients != null:
return toggleStrictIngredients();case AddCustomCuisine() when addCustomCuisine != null:
return addCustomCuisine(_that.cuisine);case RemoveCustomCuisine() when removeCustomCuisine != null:
return removeCustomCuisine(_that.cuisine);case AddCustomIngredient() when addCustomIngredient != null:
return addCustomIngredient(_that.ingredient);case RemoveCustomIngredient() when removeCustomIngredient != null:
return removeCustomIngredient(_that.ingredient);case AddCustomRecipeType() when addCustomRecipeType != null:
return addCustomRecipeType(_that.recipeType);case RemoveCustomRecipeType() when removeCustomRecipeType != null:
return removeCustomRecipeType(_that.recipeType);case ClearCuisines() when clearCuisines != null:
return clearCuisines();case ClearIngredients() when clearIngredients != null:
return clearIngredients();case ClearRecipeTypes() when clearRecipeTypes != null:
return clearRecipeTypes();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String category)  toggleCategory,required TResult Function( String ingredient)  toggleIngredient,required TResult Function( String recipeType)  toggleRecipeType,required TResult Function()  fetchRecipeSuggestions,required TResult Function( List<Recipe> recipes)  loadRecipeImages,required TResult Function( Recipe recipe)  toggleFavoriteRecipe,required TResult Function()  toggleStrictIngredients,required TResult Function( String cuisine)  addCustomCuisine,required TResult Function( String cuisine)  removeCustomCuisine,required TResult Function( String ingredient)  addCustomIngredient,required TResult Function( String ingredient)  removeCustomIngredient,required TResult Function( String recipeType)  addCustomRecipeType,required TResult Function( String recipeType)  removeCustomRecipeType,required TResult Function()  clearCuisines,required TResult Function()  clearIngredients,required TResult Function()  clearRecipeTypes,}) {final _that = this;
switch (_that) {
case ToggleCategory():
return toggleCategory(_that.category);case ToggleIngredient():
return toggleIngredient(_that.ingredient);case ToggleRecipeType():
return toggleRecipeType(_that.recipeType);case FetchRecipeSuggestions():
return fetchRecipeSuggestions();case LoadRecipeImages():
return loadRecipeImages(_that.recipes);case ToggleFavoriteRecipe():
return toggleFavoriteRecipe(_that.recipe);case ToggleStrictIngredients():
return toggleStrictIngredients();case AddCustomCuisine():
return addCustomCuisine(_that.cuisine);case RemoveCustomCuisine():
return removeCustomCuisine(_that.cuisine);case AddCustomIngredient():
return addCustomIngredient(_that.ingredient);case RemoveCustomIngredient():
return removeCustomIngredient(_that.ingredient);case AddCustomRecipeType():
return addCustomRecipeType(_that.recipeType);case RemoveCustomRecipeType():
return removeCustomRecipeType(_that.recipeType);case ClearCuisines():
return clearCuisines();case ClearIngredients():
return clearIngredients();case ClearRecipeTypes():
return clearRecipeTypes();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String category)?  toggleCategory,TResult? Function( String ingredient)?  toggleIngredient,TResult? Function( String recipeType)?  toggleRecipeType,TResult? Function()?  fetchRecipeSuggestions,TResult? Function( List<Recipe> recipes)?  loadRecipeImages,TResult? Function( Recipe recipe)?  toggleFavoriteRecipe,TResult? Function()?  toggleStrictIngredients,TResult? Function( String cuisine)?  addCustomCuisine,TResult? Function( String cuisine)?  removeCustomCuisine,TResult? Function( String ingredient)?  addCustomIngredient,TResult? Function( String ingredient)?  removeCustomIngredient,TResult? Function( String recipeType)?  addCustomRecipeType,TResult? Function( String recipeType)?  removeCustomRecipeType,TResult? Function()?  clearCuisines,TResult? Function()?  clearIngredients,TResult? Function()?  clearRecipeTypes,}) {final _that = this;
switch (_that) {
case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that.category);case ToggleIngredient() when toggleIngredient != null:
return toggleIngredient(_that.ingredient);case ToggleRecipeType() when toggleRecipeType != null:
return toggleRecipeType(_that.recipeType);case FetchRecipeSuggestions() when fetchRecipeSuggestions != null:
return fetchRecipeSuggestions();case LoadRecipeImages() when loadRecipeImages != null:
return loadRecipeImages(_that.recipes);case ToggleFavoriteRecipe() when toggleFavoriteRecipe != null:
return toggleFavoriteRecipe(_that.recipe);case ToggleStrictIngredients() when toggleStrictIngredients != null:
return toggleStrictIngredients();case AddCustomCuisine() when addCustomCuisine != null:
return addCustomCuisine(_that.cuisine);case RemoveCustomCuisine() when removeCustomCuisine != null:
return removeCustomCuisine(_that.cuisine);case AddCustomIngredient() when addCustomIngredient != null:
return addCustomIngredient(_that.ingredient);case RemoveCustomIngredient() when removeCustomIngredient != null:
return removeCustomIngredient(_that.ingredient);case AddCustomRecipeType() when addCustomRecipeType != null:
return addCustomRecipeType(_that.recipeType);case RemoveCustomRecipeType() when removeCustomRecipeType != null:
return removeCustomRecipeType(_that.recipeType);case ClearCuisines() when clearCuisines != null:
return clearCuisines();case ClearIngredients() when clearIngredients != null:
return clearIngredients();case ClearRecipeTypes() when clearRecipeTypes != null:
return clearRecipeTypes();case _:
  return null;

}
}

}

/// @nodoc


class ToggleCategory implements RecipeEvent {
  const ToggleCategory(this.category);
  

 final  String category;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleCategoryCopyWith<ToggleCategory> get copyWith => _$ToggleCategoryCopyWithImpl<ToggleCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleCategory&&(identical(other.category, category) || other.category == category));
}


@override
int get hashCode => Object.hash(runtimeType,category);

@override
String toString() {
  return 'RecipeEvent.toggleCategory(category: $category)';
}


}

/// @nodoc
abstract mixin class $ToggleCategoryCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $ToggleCategoryCopyWith(ToggleCategory value, $Res Function(ToggleCategory) _then) = _$ToggleCategoryCopyWithImpl;
@useResult
$Res call({
 String category
});




}
/// @nodoc
class _$ToggleCategoryCopyWithImpl<$Res>
    implements $ToggleCategoryCopyWith<$Res> {
  _$ToggleCategoryCopyWithImpl(this._self, this._then);

  final ToggleCategory _self;
  final $Res Function(ToggleCategory) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? category = null,}) {
  return _then(ToggleCategory(
null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleIngredient implements RecipeEvent {
  const ToggleIngredient(this.ingredient);
  

 final  String ingredient;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleIngredientCopyWith<ToggleIngredient> get copyWith => _$ToggleIngredientCopyWithImpl<ToggleIngredient>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleIngredient&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient));
}


@override
int get hashCode => Object.hash(runtimeType,ingredient);

@override
String toString() {
  return 'RecipeEvent.toggleIngredient(ingredient: $ingredient)';
}


}

/// @nodoc
abstract mixin class $ToggleIngredientCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $ToggleIngredientCopyWith(ToggleIngredient value, $Res Function(ToggleIngredient) _then) = _$ToggleIngredientCopyWithImpl;
@useResult
$Res call({
 String ingredient
});




}
/// @nodoc
class _$ToggleIngredientCopyWithImpl<$Res>
    implements $ToggleIngredientCopyWith<$Res> {
  _$ToggleIngredientCopyWithImpl(this._self, this._then);

  final ToggleIngredient _self;
  final $Res Function(ToggleIngredient) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ingredient = null,}) {
  return _then(ToggleIngredient(
null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ToggleRecipeType implements RecipeEvent {
  const ToggleRecipeType(this.recipeType);
  

 final  String recipeType;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleRecipeTypeCopyWith<ToggleRecipeType> get copyWith => _$ToggleRecipeTypeCopyWithImpl<ToggleRecipeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleRecipeType&&(identical(other.recipeType, recipeType) || other.recipeType == recipeType));
}


@override
int get hashCode => Object.hash(runtimeType,recipeType);

@override
String toString() {
  return 'RecipeEvent.toggleRecipeType(recipeType: $recipeType)';
}


}

/// @nodoc
abstract mixin class $ToggleRecipeTypeCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $ToggleRecipeTypeCopyWith(ToggleRecipeType value, $Res Function(ToggleRecipeType) _then) = _$ToggleRecipeTypeCopyWithImpl;
@useResult
$Res call({
 String recipeType
});




}
/// @nodoc
class _$ToggleRecipeTypeCopyWithImpl<$Res>
    implements $ToggleRecipeTypeCopyWith<$Res> {
  _$ToggleRecipeTypeCopyWithImpl(this._self, this._then);

  final ToggleRecipeType _self;
  final $Res Function(ToggleRecipeType) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipeType = null,}) {
  return _then(ToggleRecipeType(
null == recipeType ? _self.recipeType : recipeType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchRecipeSuggestions implements RecipeEvent {
  const FetchRecipeSuggestions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchRecipeSuggestions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeEvent.fetchRecipeSuggestions()';
}


}




/// @nodoc


class LoadRecipeImages implements RecipeEvent {
  const LoadRecipeImages(final  List<Recipe> recipes): _recipes = recipes;
  

 final  List<Recipe> _recipes;
 List<Recipe> get recipes {
  if (_recipes is EqualUnmodifiableListView) return _recipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipes);
}


/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadRecipeImagesCopyWith<LoadRecipeImages> get copyWith => _$LoadRecipeImagesCopyWithImpl<LoadRecipeImages>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadRecipeImages&&const DeepCollectionEquality().equals(other._recipes, _recipes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_recipes));

@override
String toString() {
  return 'RecipeEvent.loadRecipeImages(recipes: $recipes)';
}


}

/// @nodoc
abstract mixin class $LoadRecipeImagesCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $LoadRecipeImagesCopyWith(LoadRecipeImages value, $Res Function(LoadRecipeImages) _then) = _$LoadRecipeImagesCopyWithImpl;
@useResult
$Res call({
 List<Recipe> recipes
});




}
/// @nodoc
class _$LoadRecipeImagesCopyWithImpl<$Res>
    implements $LoadRecipeImagesCopyWith<$Res> {
  _$LoadRecipeImagesCopyWithImpl(this._self, this._then);

  final LoadRecipeImages _self;
  final $Res Function(LoadRecipeImages) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipes = null,}) {
  return _then(LoadRecipeImages(
null == recipes ? _self._recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<Recipe>,
  ));
}


}

/// @nodoc


class ToggleFavoriteRecipe implements RecipeEvent {
  const ToggleFavoriteRecipe(this.recipe);
  

 final  Recipe recipe;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleFavoriteRecipeCopyWith<ToggleFavoriteRecipe> get copyWith => _$ToggleFavoriteRecipeCopyWithImpl<ToggleFavoriteRecipe>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleFavoriteRecipe&&(identical(other.recipe, recipe) || other.recipe == recipe));
}


@override
int get hashCode => Object.hash(runtimeType,recipe);

@override
String toString() {
  return 'RecipeEvent.toggleFavoriteRecipe(recipe: $recipe)';
}


}

/// @nodoc
abstract mixin class $ToggleFavoriteRecipeCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $ToggleFavoriteRecipeCopyWith(ToggleFavoriteRecipe value, $Res Function(ToggleFavoriteRecipe) _then) = _$ToggleFavoriteRecipeCopyWithImpl;
@useResult
$Res call({
 Recipe recipe
});


$RecipeCopyWith<$Res> get recipe;

}
/// @nodoc
class _$ToggleFavoriteRecipeCopyWithImpl<$Res>
    implements $ToggleFavoriteRecipeCopyWith<$Res> {
  _$ToggleFavoriteRecipeCopyWithImpl(this._self, this._then);

  final ToggleFavoriteRecipe _self;
  final $Res Function(ToggleFavoriteRecipe) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipe = null,}) {
  return _then(ToggleFavoriteRecipe(
null == recipe ? _self.recipe : recipe // ignore: cast_nullable_to_non_nullable
as Recipe,
  ));
}

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RecipeCopyWith<$Res> get recipe {
  
  return $RecipeCopyWith<$Res>(_self.recipe, (value) {
    return _then(_self.copyWith(recipe: value));
  });
}
}

/// @nodoc


class ToggleStrictIngredients implements RecipeEvent {
  const ToggleStrictIngredients();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleStrictIngredients);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeEvent.toggleStrictIngredients()';
}


}




/// @nodoc


class AddCustomCuisine implements RecipeEvent {
  const AddCustomCuisine(this.cuisine);
  

 final  String cuisine;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCustomCuisineCopyWith<AddCustomCuisine> get copyWith => _$AddCustomCuisineCopyWithImpl<AddCustomCuisine>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCustomCuisine&&(identical(other.cuisine, cuisine) || other.cuisine == cuisine));
}


@override
int get hashCode => Object.hash(runtimeType,cuisine);

@override
String toString() {
  return 'RecipeEvent.addCustomCuisine(cuisine: $cuisine)';
}


}

/// @nodoc
abstract mixin class $AddCustomCuisineCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $AddCustomCuisineCopyWith(AddCustomCuisine value, $Res Function(AddCustomCuisine) _then) = _$AddCustomCuisineCopyWithImpl;
@useResult
$Res call({
 String cuisine
});




}
/// @nodoc
class _$AddCustomCuisineCopyWithImpl<$Res>
    implements $AddCustomCuisineCopyWith<$Res> {
  _$AddCustomCuisineCopyWithImpl(this._self, this._then);

  final AddCustomCuisine _self;
  final $Res Function(AddCustomCuisine) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cuisine = null,}) {
  return _then(AddCustomCuisine(
null == cuisine ? _self.cuisine : cuisine // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveCustomCuisine implements RecipeEvent {
  const RemoveCustomCuisine(this.cuisine);
  

 final  String cuisine;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveCustomCuisineCopyWith<RemoveCustomCuisine> get copyWith => _$RemoveCustomCuisineCopyWithImpl<RemoveCustomCuisine>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveCustomCuisine&&(identical(other.cuisine, cuisine) || other.cuisine == cuisine));
}


@override
int get hashCode => Object.hash(runtimeType,cuisine);

@override
String toString() {
  return 'RecipeEvent.removeCustomCuisine(cuisine: $cuisine)';
}


}

/// @nodoc
abstract mixin class $RemoveCustomCuisineCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $RemoveCustomCuisineCopyWith(RemoveCustomCuisine value, $Res Function(RemoveCustomCuisine) _then) = _$RemoveCustomCuisineCopyWithImpl;
@useResult
$Res call({
 String cuisine
});




}
/// @nodoc
class _$RemoveCustomCuisineCopyWithImpl<$Res>
    implements $RemoveCustomCuisineCopyWith<$Res> {
  _$RemoveCustomCuisineCopyWithImpl(this._self, this._then);

  final RemoveCustomCuisine _self;
  final $Res Function(RemoveCustomCuisine) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cuisine = null,}) {
  return _then(RemoveCustomCuisine(
null == cuisine ? _self.cuisine : cuisine // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddCustomIngredient implements RecipeEvent {
  const AddCustomIngredient(this.ingredient);
  

 final  String ingredient;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCustomIngredientCopyWith<AddCustomIngredient> get copyWith => _$AddCustomIngredientCopyWithImpl<AddCustomIngredient>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCustomIngredient&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient));
}


@override
int get hashCode => Object.hash(runtimeType,ingredient);

@override
String toString() {
  return 'RecipeEvent.addCustomIngredient(ingredient: $ingredient)';
}


}

/// @nodoc
abstract mixin class $AddCustomIngredientCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $AddCustomIngredientCopyWith(AddCustomIngredient value, $Res Function(AddCustomIngredient) _then) = _$AddCustomIngredientCopyWithImpl;
@useResult
$Res call({
 String ingredient
});




}
/// @nodoc
class _$AddCustomIngredientCopyWithImpl<$Res>
    implements $AddCustomIngredientCopyWith<$Res> {
  _$AddCustomIngredientCopyWithImpl(this._self, this._then);

  final AddCustomIngredient _self;
  final $Res Function(AddCustomIngredient) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ingredient = null,}) {
  return _then(AddCustomIngredient(
null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveCustomIngredient implements RecipeEvent {
  const RemoveCustomIngredient(this.ingredient);
  

 final  String ingredient;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveCustomIngredientCopyWith<RemoveCustomIngredient> get copyWith => _$RemoveCustomIngredientCopyWithImpl<RemoveCustomIngredient>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveCustomIngredient&&(identical(other.ingredient, ingredient) || other.ingredient == ingredient));
}


@override
int get hashCode => Object.hash(runtimeType,ingredient);

@override
String toString() {
  return 'RecipeEvent.removeCustomIngredient(ingredient: $ingredient)';
}


}

/// @nodoc
abstract mixin class $RemoveCustomIngredientCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $RemoveCustomIngredientCopyWith(RemoveCustomIngredient value, $Res Function(RemoveCustomIngredient) _then) = _$RemoveCustomIngredientCopyWithImpl;
@useResult
$Res call({
 String ingredient
});




}
/// @nodoc
class _$RemoveCustomIngredientCopyWithImpl<$Res>
    implements $RemoveCustomIngredientCopyWith<$Res> {
  _$RemoveCustomIngredientCopyWithImpl(this._self, this._then);

  final RemoveCustomIngredient _self;
  final $Res Function(RemoveCustomIngredient) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? ingredient = null,}) {
  return _then(RemoveCustomIngredient(
null == ingredient ? _self.ingredient : ingredient // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddCustomRecipeType implements RecipeEvent {
  const AddCustomRecipeType(this.recipeType);
  

 final  String recipeType;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddCustomRecipeTypeCopyWith<AddCustomRecipeType> get copyWith => _$AddCustomRecipeTypeCopyWithImpl<AddCustomRecipeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddCustomRecipeType&&(identical(other.recipeType, recipeType) || other.recipeType == recipeType));
}


@override
int get hashCode => Object.hash(runtimeType,recipeType);

@override
String toString() {
  return 'RecipeEvent.addCustomRecipeType(recipeType: $recipeType)';
}


}

/// @nodoc
abstract mixin class $AddCustomRecipeTypeCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $AddCustomRecipeTypeCopyWith(AddCustomRecipeType value, $Res Function(AddCustomRecipeType) _then) = _$AddCustomRecipeTypeCopyWithImpl;
@useResult
$Res call({
 String recipeType
});




}
/// @nodoc
class _$AddCustomRecipeTypeCopyWithImpl<$Res>
    implements $AddCustomRecipeTypeCopyWith<$Res> {
  _$AddCustomRecipeTypeCopyWithImpl(this._self, this._then);

  final AddCustomRecipeType _self;
  final $Res Function(AddCustomRecipeType) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipeType = null,}) {
  return _then(AddCustomRecipeType(
null == recipeType ? _self.recipeType : recipeType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveCustomRecipeType implements RecipeEvent {
  const RemoveCustomRecipeType(this.recipeType);
  

 final  String recipeType;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveCustomRecipeTypeCopyWith<RemoveCustomRecipeType> get copyWith => _$RemoveCustomRecipeTypeCopyWithImpl<RemoveCustomRecipeType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveCustomRecipeType&&(identical(other.recipeType, recipeType) || other.recipeType == recipeType));
}


@override
int get hashCode => Object.hash(runtimeType,recipeType);

@override
String toString() {
  return 'RecipeEvent.removeCustomRecipeType(recipeType: $recipeType)';
}


}

/// @nodoc
abstract mixin class $RemoveCustomRecipeTypeCopyWith<$Res> implements $RecipeEventCopyWith<$Res> {
  factory $RemoveCustomRecipeTypeCopyWith(RemoveCustomRecipeType value, $Res Function(RemoveCustomRecipeType) _then) = _$RemoveCustomRecipeTypeCopyWithImpl;
@useResult
$Res call({
 String recipeType
});




}
/// @nodoc
class _$RemoveCustomRecipeTypeCopyWithImpl<$Res>
    implements $RemoveCustomRecipeTypeCopyWith<$Res> {
  _$RemoveCustomRecipeTypeCopyWithImpl(this._self, this._then);

  final RemoveCustomRecipeType _self;
  final $Res Function(RemoveCustomRecipeType) _then;

/// Create a copy of RecipeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? recipeType = null,}) {
  return _then(RemoveCustomRecipeType(
null == recipeType ? _self.recipeType : recipeType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearCuisines implements RecipeEvent {
  const ClearCuisines();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearCuisines);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeEvent.clearCuisines()';
}


}




/// @nodoc


class ClearIngredients implements RecipeEvent {
  const ClearIngredients();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearIngredients);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeEvent.clearIngredients()';
}


}




/// @nodoc


class ClearRecipeTypes implements RecipeEvent {
  const ClearRecipeTypes();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearRecipeTypes);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'RecipeEvent.clearRecipeTypes()';
}


}





/// @nodoc
mixin _$RecipeState {

 List<String> get selectedCuisines; List<String> get selectedIngredients; List<String> get selectedRecipeTypes; List<String> get customCuisines; List<String> get customIngredients; List<String> get customRecipeTypes; List<RecipeSession> get recipeSessions; List<Recipe> get favoriteRecipes; bool get strictIngredients; Map<String, String> get recipeImagePaths; Map<String, ImageLoadingState> get recipeImageLoadingStates; RecipeLoadingState get suggestionsLoadingState; String? get suggestionsErrorMessage;
/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeStateCopyWith<RecipeState> get copyWith => _$RecipeStateCopyWithImpl<RecipeState>(this as RecipeState, _$identity);

  /// Serializes this RecipeState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeState&&const DeepCollectionEquality().equals(other.selectedCuisines, selectedCuisines)&&const DeepCollectionEquality().equals(other.selectedIngredients, selectedIngredients)&&const DeepCollectionEquality().equals(other.selectedRecipeTypes, selectedRecipeTypes)&&const DeepCollectionEquality().equals(other.customCuisines, customCuisines)&&const DeepCollectionEquality().equals(other.customIngredients, customIngredients)&&const DeepCollectionEquality().equals(other.customRecipeTypes, customRecipeTypes)&&const DeepCollectionEquality().equals(other.recipeSessions, recipeSessions)&&const DeepCollectionEquality().equals(other.favoriteRecipes, favoriteRecipes)&&(identical(other.strictIngredients, strictIngredients) || other.strictIngredients == strictIngredients)&&const DeepCollectionEquality().equals(other.recipeImagePaths, recipeImagePaths)&&const DeepCollectionEquality().equals(other.recipeImageLoadingStates, recipeImageLoadingStates)&&(identical(other.suggestionsLoadingState, suggestionsLoadingState) || other.suggestionsLoadingState == suggestionsLoadingState)&&(identical(other.suggestionsErrorMessage, suggestionsErrorMessage) || other.suggestionsErrorMessage == suggestionsErrorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(selectedCuisines),const DeepCollectionEquality().hash(selectedIngredients),const DeepCollectionEquality().hash(selectedRecipeTypes),const DeepCollectionEquality().hash(customCuisines),const DeepCollectionEquality().hash(customIngredients),const DeepCollectionEquality().hash(customRecipeTypes),const DeepCollectionEquality().hash(recipeSessions),const DeepCollectionEquality().hash(favoriteRecipes),strictIngredients,const DeepCollectionEquality().hash(recipeImagePaths),const DeepCollectionEquality().hash(recipeImageLoadingStates),suggestionsLoadingState,suggestionsErrorMessage);

@override
String toString() {
  return 'RecipeState(selectedCuisines: $selectedCuisines, selectedIngredients: $selectedIngredients, selectedRecipeTypes: $selectedRecipeTypes, customCuisines: $customCuisines, customIngredients: $customIngredients, customRecipeTypes: $customRecipeTypes, recipeSessions: $recipeSessions, favoriteRecipes: $favoriteRecipes, strictIngredients: $strictIngredients, recipeImagePaths: $recipeImagePaths, recipeImageLoadingStates: $recipeImageLoadingStates, suggestionsLoadingState: $suggestionsLoadingState, suggestionsErrorMessage: $suggestionsErrorMessage)';
}


}

/// @nodoc
abstract mixin class $RecipeStateCopyWith<$Res>  {
  factory $RecipeStateCopyWith(RecipeState value, $Res Function(RecipeState) _then) = _$RecipeStateCopyWithImpl;
@useResult
$Res call({
 List<String> selectedCuisines, List<String> selectedIngredients, List<String> selectedRecipeTypes, List<String> customCuisines, List<String> customIngredients, List<String> customRecipeTypes, List<RecipeSession> recipeSessions, List<Recipe> favoriteRecipes, bool strictIngredients, Map<String, String> recipeImagePaths, Map<String, ImageLoadingState> recipeImageLoadingStates, RecipeLoadingState suggestionsLoadingState, String? suggestionsErrorMessage
});




}
/// @nodoc
class _$RecipeStateCopyWithImpl<$Res>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._self, this._then);

  final RecipeState _self;
  final $Res Function(RecipeState) _then;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? selectedCuisines = null,Object? selectedIngredients = null,Object? selectedRecipeTypes = null,Object? customCuisines = null,Object? customIngredients = null,Object? customRecipeTypes = null,Object? recipeSessions = null,Object? favoriteRecipes = null,Object? strictIngredients = null,Object? recipeImagePaths = null,Object? recipeImageLoadingStates = null,Object? suggestionsLoadingState = null,Object? suggestionsErrorMessage = freezed,}) {
  return _then(_self.copyWith(
selectedCuisines: null == selectedCuisines ? _self.selectedCuisines : selectedCuisines // ignore: cast_nullable_to_non_nullable
as List<String>,selectedIngredients: null == selectedIngredients ? _self.selectedIngredients : selectedIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,selectedRecipeTypes: null == selectedRecipeTypes ? _self.selectedRecipeTypes : selectedRecipeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,customCuisines: null == customCuisines ? _self.customCuisines : customCuisines // ignore: cast_nullable_to_non_nullable
as List<String>,customIngredients: null == customIngredients ? _self.customIngredients : customIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,customRecipeTypes: null == customRecipeTypes ? _self.customRecipeTypes : customRecipeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,recipeSessions: null == recipeSessions ? _self.recipeSessions : recipeSessions // ignore: cast_nullable_to_non_nullable
as List<RecipeSession>,favoriteRecipes: null == favoriteRecipes ? _self.favoriteRecipes : favoriteRecipes // ignore: cast_nullable_to_non_nullable
as List<Recipe>,strictIngredients: null == strictIngredients ? _self.strictIngredients : strictIngredients // ignore: cast_nullable_to_non_nullable
as bool,recipeImagePaths: null == recipeImagePaths ? _self.recipeImagePaths : recipeImagePaths // ignore: cast_nullable_to_non_nullable
as Map<String, String>,recipeImageLoadingStates: null == recipeImageLoadingStates ? _self.recipeImageLoadingStates : recipeImageLoadingStates // ignore: cast_nullable_to_non_nullable
as Map<String, ImageLoadingState>,suggestionsLoadingState: null == suggestionsLoadingState ? _self.suggestionsLoadingState : suggestionsLoadingState // ignore: cast_nullable_to_non_nullable
as RecipeLoadingState,suggestionsErrorMessage: freezed == suggestionsErrorMessage ? _self.suggestionsErrorMessage : suggestionsErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeState].
extension RecipeStatePatterns on RecipeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeState value)  $default,){
final _that = this;
switch (_that) {
case _RecipeState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeState value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> selectedCuisines,  List<String> selectedIngredients,  List<String> selectedRecipeTypes,  List<String> customCuisines,  List<String> customIngredients,  List<String> customRecipeTypes,  List<RecipeSession> recipeSessions,  List<Recipe> favoriteRecipes,  bool strictIngredients,  Map<String, String> recipeImagePaths,  Map<String, ImageLoadingState> recipeImageLoadingStates,  RecipeLoadingState suggestionsLoadingState,  String? suggestionsErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that.selectedCuisines,_that.selectedIngredients,_that.selectedRecipeTypes,_that.customCuisines,_that.customIngredients,_that.customRecipeTypes,_that.recipeSessions,_that.favoriteRecipes,_that.strictIngredients,_that.recipeImagePaths,_that.recipeImageLoadingStates,_that.suggestionsLoadingState,_that.suggestionsErrorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> selectedCuisines,  List<String> selectedIngredients,  List<String> selectedRecipeTypes,  List<String> customCuisines,  List<String> customIngredients,  List<String> customRecipeTypes,  List<RecipeSession> recipeSessions,  List<Recipe> favoriteRecipes,  bool strictIngredients,  Map<String, String> recipeImagePaths,  Map<String, ImageLoadingState> recipeImageLoadingStates,  RecipeLoadingState suggestionsLoadingState,  String? suggestionsErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _RecipeState():
return $default(_that.selectedCuisines,_that.selectedIngredients,_that.selectedRecipeTypes,_that.customCuisines,_that.customIngredients,_that.customRecipeTypes,_that.recipeSessions,_that.favoriteRecipes,_that.strictIngredients,_that.recipeImagePaths,_that.recipeImageLoadingStates,_that.suggestionsLoadingState,_that.suggestionsErrorMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> selectedCuisines,  List<String> selectedIngredients,  List<String> selectedRecipeTypes,  List<String> customCuisines,  List<String> customIngredients,  List<String> customRecipeTypes,  List<RecipeSession> recipeSessions,  List<Recipe> favoriteRecipes,  bool strictIngredients,  Map<String, String> recipeImagePaths,  Map<String, ImageLoadingState> recipeImageLoadingStates,  RecipeLoadingState suggestionsLoadingState,  String? suggestionsErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _RecipeState() when $default != null:
return $default(_that.selectedCuisines,_that.selectedIngredients,_that.selectedRecipeTypes,_that.customCuisines,_that.customIngredients,_that.customRecipeTypes,_that.recipeSessions,_that.favoriteRecipes,_that.strictIngredients,_that.recipeImagePaths,_that.recipeImageLoadingStates,_that.suggestionsLoadingState,_that.suggestionsErrorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeState implements RecipeState {
  const _RecipeState({final  List<String> selectedCuisines = const [], final  List<String> selectedIngredients = const [], final  List<String> selectedRecipeTypes = const [], final  List<String> customCuisines = const [], final  List<String> customIngredients = const [], final  List<String> customRecipeTypes = const [], final  List<RecipeSession> recipeSessions = const [], final  List<Recipe> favoriteRecipes = const [], this.strictIngredients = false, final  Map<String, String> recipeImagePaths = const {}, final  Map<String, ImageLoadingState> recipeImageLoadingStates = const {}, this.suggestionsLoadingState = RecipeLoadingState.init, this.suggestionsErrorMessage}): _selectedCuisines = selectedCuisines,_selectedIngredients = selectedIngredients,_selectedRecipeTypes = selectedRecipeTypes,_customCuisines = customCuisines,_customIngredients = customIngredients,_customRecipeTypes = customRecipeTypes,_recipeSessions = recipeSessions,_favoriteRecipes = favoriteRecipes,_recipeImagePaths = recipeImagePaths,_recipeImageLoadingStates = recipeImageLoadingStates;
  factory _RecipeState.fromJson(Map<String, dynamic> json) => _$RecipeStateFromJson(json);

 final  List<String> _selectedCuisines;
@override@JsonKey() List<String> get selectedCuisines {
  if (_selectedCuisines is EqualUnmodifiableListView) return _selectedCuisines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedCuisines);
}

 final  List<String> _selectedIngredients;
@override@JsonKey() List<String> get selectedIngredients {
  if (_selectedIngredients is EqualUnmodifiableListView) return _selectedIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedIngredients);
}

 final  List<String> _selectedRecipeTypes;
@override@JsonKey() List<String> get selectedRecipeTypes {
  if (_selectedRecipeTypes is EqualUnmodifiableListView) return _selectedRecipeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_selectedRecipeTypes);
}

 final  List<String> _customCuisines;
@override@JsonKey() List<String> get customCuisines {
  if (_customCuisines is EqualUnmodifiableListView) return _customCuisines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customCuisines);
}

 final  List<String> _customIngredients;
@override@JsonKey() List<String> get customIngredients {
  if (_customIngredients is EqualUnmodifiableListView) return _customIngredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customIngredients);
}

 final  List<String> _customRecipeTypes;
@override@JsonKey() List<String> get customRecipeTypes {
  if (_customRecipeTypes is EqualUnmodifiableListView) return _customRecipeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_customRecipeTypes);
}

 final  List<RecipeSession> _recipeSessions;
@override@JsonKey() List<RecipeSession> get recipeSessions {
  if (_recipeSessions is EqualUnmodifiableListView) return _recipeSessions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipeSessions);
}

 final  List<Recipe> _favoriteRecipes;
@override@JsonKey() List<Recipe> get favoriteRecipes {
  if (_favoriteRecipes is EqualUnmodifiableListView) return _favoriteRecipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_favoriteRecipes);
}

@override@JsonKey() final  bool strictIngredients;
 final  Map<String, String> _recipeImagePaths;
@override@JsonKey() Map<String, String> get recipeImagePaths {
  if (_recipeImagePaths is EqualUnmodifiableMapView) return _recipeImagePaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_recipeImagePaths);
}

 final  Map<String, ImageLoadingState> _recipeImageLoadingStates;
@override@JsonKey() Map<String, ImageLoadingState> get recipeImageLoadingStates {
  if (_recipeImageLoadingStates is EqualUnmodifiableMapView) return _recipeImageLoadingStates;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_recipeImageLoadingStates);
}

@override@JsonKey() final  RecipeLoadingState suggestionsLoadingState;
@override final  String? suggestionsErrorMessage;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeStateCopyWith<_RecipeState> get copyWith => __$RecipeStateCopyWithImpl<_RecipeState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeState&&const DeepCollectionEquality().equals(other._selectedCuisines, _selectedCuisines)&&const DeepCollectionEquality().equals(other._selectedIngredients, _selectedIngredients)&&const DeepCollectionEquality().equals(other._selectedRecipeTypes, _selectedRecipeTypes)&&const DeepCollectionEquality().equals(other._customCuisines, _customCuisines)&&const DeepCollectionEquality().equals(other._customIngredients, _customIngredients)&&const DeepCollectionEquality().equals(other._customRecipeTypes, _customRecipeTypes)&&const DeepCollectionEquality().equals(other._recipeSessions, _recipeSessions)&&const DeepCollectionEquality().equals(other._favoriteRecipes, _favoriteRecipes)&&(identical(other.strictIngredients, strictIngredients) || other.strictIngredients == strictIngredients)&&const DeepCollectionEquality().equals(other._recipeImagePaths, _recipeImagePaths)&&const DeepCollectionEquality().equals(other._recipeImageLoadingStates, _recipeImageLoadingStates)&&(identical(other.suggestionsLoadingState, suggestionsLoadingState) || other.suggestionsLoadingState == suggestionsLoadingState)&&(identical(other.suggestionsErrorMessage, suggestionsErrorMessage) || other.suggestionsErrorMessage == suggestionsErrorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_selectedCuisines),const DeepCollectionEquality().hash(_selectedIngredients),const DeepCollectionEquality().hash(_selectedRecipeTypes),const DeepCollectionEquality().hash(_customCuisines),const DeepCollectionEquality().hash(_customIngredients),const DeepCollectionEquality().hash(_customRecipeTypes),const DeepCollectionEquality().hash(_recipeSessions),const DeepCollectionEquality().hash(_favoriteRecipes),strictIngredients,const DeepCollectionEquality().hash(_recipeImagePaths),const DeepCollectionEquality().hash(_recipeImageLoadingStates),suggestionsLoadingState,suggestionsErrorMessage);

@override
String toString() {
  return 'RecipeState(selectedCuisines: $selectedCuisines, selectedIngredients: $selectedIngredients, selectedRecipeTypes: $selectedRecipeTypes, customCuisines: $customCuisines, customIngredients: $customIngredients, customRecipeTypes: $customRecipeTypes, recipeSessions: $recipeSessions, favoriteRecipes: $favoriteRecipes, strictIngredients: $strictIngredients, recipeImagePaths: $recipeImagePaths, recipeImageLoadingStates: $recipeImageLoadingStates, suggestionsLoadingState: $suggestionsLoadingState, suggestionsErrorMessage: $suggestionsErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$RecipeStateCopyWith<$Res> implements $RecipeStateCopyWith<$Res> {
  factory _$RecipeStateCopyWith(_RecipeState value, $Res Function(_RecipeState) _then) = __$RecipeStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> selectedCuisines, List<String> selectedIngredients, List<String> selectedRecipeTypes, List<String> customCuisines, List<String> customIngredients, List<String> customRecipeTypes, List<RecipeSession> recipeSessions, List<Recipe> favoriteRecipes, bool strictIngredients, Map<String, String> recipeImagePaths, Map<String, ImageLoadingState> recipeImageLoadingStates, RecipeLoadingState suggestionsLoadingState, String? suggestionsErrorMessage
});




}
/// @nodoc
class __$RecipeStateCopyWithImpl<$Res>
    implements _$RecipeStateCopyWith<$Res> {
  __$RecipeStateCopyWithImpl(this._self, this._then);

  final _RecipeState _self;
  final $Res Function(_RecipeState) _then;

/// Create a copy of RecipeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? selectedCuisines = null,Object? selectedIngredients = null,Object? selectedRecipeTypes = null,Object? customCuisines = null,Object? customIngredients = null,Object? customRecipeTypes = null,Object? recipeSessions = null,Object? favoriteRecipes = null,Object? strictIngredients = null,Object? recipeImagePaths = null,Object? recipeImageLoadingStates = null,Object? suggestionsLoadingState = null,Object? suggestionsErrorMessage = freezed,}) {
  return _then(_RecipeState(
selectedCuisines: null == selectedCuisines ? _self._selectedCuisines : selectedCuisines // ignore: cast_nullable_to_non_nullable
as List<String>,selectedIngredients: null == selectedIngredients ? _self._selectedIngredients : selectedIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,selectedRecipeTypes: null == selectedRecipeTypes ? _self._selectedRecipeTypes : selectedRecipeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,customCuisines: null == customCuisines ? _self._customCuisines : customCuisines // ignore: cast_nullable_to_non_nullable
as List<String>,customIngredients: null == customIngredients ? _self._customIngredients : customIngredients // ignore: cast_nullable_to_non_nullable
as List<String>,customRecipeTypes: null == customRecipeTypes ? _self._customRecipeTypes : customRecipeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,recipeSessions: null == recipeSessions ? _self._recipeSessions : recipeSessions // ignore: cast_nullable_to_non_nullable
as List<RecipeSession>,favoriteRecipes: null == favoriteRecipes ? _self._favoriteRecipes : favoriteRecipes // ignore: cast_nullable_to_non_nullable
as List<Recipe>,strictIngredients: null == strictIngredients ? _self.strictIngredients : strictIngredients // ignore: cast_nullable_to_non_nullable
as bool,recipeImagePaths: null == recipeImagePaths ? _self._recipeImagePaths : recipeImagePaths // ignore: cast_nullable_to_non_nullable
as Map<String, String>,recipeImageLoadingStates: null == recipeImageLoadingStates ? _self._recipeImageLoadingStates : recipeImageLoadingStates // ignore: cast_nullable_to_non_nullable
as Map<String, ImageLoadingState>,suggestionsLoadingState: null == suggestionsLoadingState ? _self.suggestionsLoadingState : suggestionsLoadingState // ignore: cast_nullable_to_non_nullable
as RecipeLoadingState,suggestionsErrorMessage: freezed == suggestionsErrorMessage ? _self.suggestionsErrorMessage : suggestionsErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
