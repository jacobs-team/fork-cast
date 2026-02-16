// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RecipeSession {

 String get id; DateTime get createdAt; List<String> get cuisines; List<String> get ingredients; bool get strictIngredients; List<Recipe> get recipes; List<String> get recipeTypes;
/// Create a copy of RecipeSession
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecipeSessionCopyWith<RecipeSession> get copyWith => _$RecipeSessionCopyWithImpl<RecipeSession>(this as RecipeSession, _$identity);

  /// Serializes this RecipeSession to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecipeSession&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.cuisines, cuisines)&&const DeepCollectionEquality().equals(other.ingredients, ingredients)&&(identical(other.strictIngredients, strictIngredients) || other.strictIngredients == strictIngredients)&&const DeepCollectionEquality().equals(other.recipes, recipes)&&const DeepCollectionEquality().equals(other.recipeTypes, recipeTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,const DeepCollectionEquality().hash(cuisines),const DeepCollectionEquality().hash(ingredients),strictIngredients,const DeepCollectionEquality().hash(recipes),const DeepCollectionEquality().hash(recipeTypes));

@override
String toString() {
  return 'RecipeSession(id: $id, createdAt: $createdAt, cuisines: $cuisines, ingredients: $ingredients, strictIngredients: $strictIngredients, recipes: $recipes, recipeTypes: $recipeTypes)';
}


}

/// @nodoc
abstract mixin class $RecipeSessionCopyWith<$Res>  {
  factory $RecipeSessionCopyWith(RecipeSession value, $Res Function(RecipeSession) _then) = _$RecipeSessionCopyWithImpl;
@useResult
$Res call({
 String id, DateTime createdAt, List<String> cuisines, List<String> ingredients, bool strictIngredients, List<Recipe> recipes, List<String> recipeTypes
});




}
/// @nodoc
class _$RecipeSessionCopyWithImpl<$Res>
    implements $RecipeSessionCopyWith<$Res> {
  _$RecipeSessionCopyWithImpl(this._self, this._then);

  final RecipeSession _self;
  final $Res Function(RecipeSession) _then;

/// Create a copy of RecipeSession
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? createdAt = null,Object? cuisines = null,Object? ingredients = null,Object? strictIngredients = null,Object? recipes = null,Object? recipeTypes = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cuisines: null == cuisines ? _self.cuisines : cuisines // ignore: cast_nullable_to_non_nullable
as List<String>,ingredients: null == ingredients ? _self.ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,strictIngredients: null == strictIngredients ? _self.strictIngredients : strictIngredients // ignore: cast_nullable_to_non_nullable
as bool,recipes: null == recipes ? _self.recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<Recipe>,recipeTypes: null == recipeTypes ? _self.recipeTypes : recipeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [RecipeSession].
extension RecipeSessionPatterns on RecipeSession {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecipeSession value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecipeSession() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecipeSession value)  $default,){
final _that = this;
switch (_that) {
case _RecipeSession():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecipeSession value)?  $default,){
final _that = this;
switch (_that) {
case _RecipeSession() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  List<String> cuisines,  List<String> ingredients,  bool strictIngredients,  List<Recipe> recipes,  List<String> recipeTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecipeSession() when $default != null:
return $default(_that.id,_that.createdAt,_that.cuisines,_that.ingredients,_that.strictIngredients,_that.recipes,_that.recipeTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  DateTime createdAt,  List<String> cuisines,  List<String> ingredients,  bool strictIngredients,  List<Recipe> recipes,  List<String> recipeTypes)  $default,) {final _that = this;
switch (_that) {
case _RecipeSession():
return $default(_that.id,_that.createdAt,_that.cuisines,_that.ingredients,_that.strictIngredients,_that.recipes,_that.recipeTypes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  DateTime createdAt,  List<String> cuisines,  List<String> ingredients,  bool strictIngredients,  List<Recipe> recipes,  List<String> recipeTypes)?  $default,) {final _that = this;
switch (_that) {
case _RecipeSession() when $default != null:
return $default(_that.id,_that.createdAt,_that.cuisines,_that.ingredients,_that.strictIngredients,_that.recipes,_that.recipeTypes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecipeSession implements RecipeSession {
  const _RecipeSession({required this.id, required this.createdAt, required final  List<String> cuisines, required final  List<String> ingredients, required this.strictIngredients, required final  List<Recipe> recipes, final  List<String> recipeTypes = const []}): _cuisines = cuisines,_ingredients = ingredients,_recipes = recipes,_recipeTypes = recipeTypes;
  factory _RecipeSession.fromJson(Map<String, dynamic> json) => _$RecipeSessionFromJson(json);

@override final  String id;
@override final  DateTime createdAt;
 final  List<String> _cuisines;
@override List<String> get cuisines {
  if (_cuisines is EqualUnmodifiableListView) return _cuisines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cuisines);
}

 final  List<String> _ingredients;
@override List<String> get ingredients {
  if (_ingredients is EqualUnmodifiableListView) return _ingredients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ingredients);
}

@override final  bool strictIngredients;
 final  List<Recipe> _recipes;
@override List<Recipe> get recipes {
  if (_recipes is EqualUnmodifiableListView) return _recipes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipes);
}

 final  List<String> _recipeTypes;
@override@JsonKey() List<String> get recipeTypes {
  if (_recipeTypes is EqualUnmodifiableListView) return _recipeTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recipeTypes);
}


/// Create a copy of RecipeSession
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecipeSessionCopyWith<_RecipeSession> get copyWith => __$RecipeSessionCopyWithImpl<_RecipeSession>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecipeSessionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecipeSession&&(identical(other.id, id) || other.id == id)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._cuisines, _cuisines)&&const DeepCollectionEquality().equals(other._ingredients, _ingredients)&&(identical(other.strictIngredients, strictIngredients) || other.strictIngredients == strictIngredients)&&const DeepCollectionEquality().equals(other._recipes, _recipes)&&const DeepCollectionEquality().equals(other._recipeTypes, _recipeTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,createdAt,const DeepCollectionEquality().hash(_cuisines),const DeepCollectionEquality().hash(_ingredients),strictIngredients,const DeepCollectionEquality().hash(_recipes),const DeepCollectionEquality().hash(_recipeTypes));

@override
String toString() {
  return 'RecipeSession(id: $id, createdAt: $createdAt, cuisines: $cuisines, ingredients: $ingredients, strictIngredients: $strictIngredients, recipes: $recipes, recipeTypes: $recipeTypes)';
}


}

/// @nodoc
abstract mixin class _$RecipeSessionCopyWith<$Res> implements $RecipeSessionCopyWith<$Res> {
  factory _$RecipeSessionCopyWith(_RecipeSession value, $Res Function(_RecipeSession) _then) = __$RecipeSessionCopyWithImpl;
@override @useResult
$Res call({
 String id, DateTime createdAt, List<String> cuisines, List<String> ingredients, bool strictIngredients, List<Recipe> recipes, List<String> recipeTypes
});




}
/// @nodoc
class __$RecipeSessionCopyWithImpl<$Res>
    implements _$RecipeSessionCopyWith<$Res> {
  __$RecipeSessionCopyWithImpl(this._self, this._then);

  final _RecipeSession _self;
  final $Res Function(_RecipeSession) _then;

/// Create a copy of RecipeSession
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? createdAt = null,Object? cuisines = null,Object? ingredients = null,Object? strictIngredients = null,Object? recipes = null,Object? recipeTypes = null,}) {
  return _then(_RecipeSession(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,cuisines: null == cuisines ? _self._cuisines : cuisines // ignore: cast_nullable_to_non_nullable
as List<String>,ingredients: null == ingredients ? _self._ingredients : ingredients // ignore: cast_nullable_to_non_nullable
as List<String>,strictIngredients: null == strictIngredients ? _self.strictIngredients : strictIngredients // ignore: cast_nullable_to_non_nullable
as bool,recipes: null == recipes ? _self._recipes : recipes // ignore: cast_nullable_to_non_nullable
as List<Recipe>,recipeTypes: null == recipeTypes ? _self._recipeTypes : recipeTypes // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
