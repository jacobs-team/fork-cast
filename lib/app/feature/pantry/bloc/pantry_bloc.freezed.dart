// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pantry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PantryEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PantryEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PantryEvent()';
}


}

/// @nodoc
class $PantryEventCopyWith<$Res>  {
$PantryEventCopyWith(PantryEvent _, $Res Function(PantryEvent) __);
}


/// Adds pattern-matching-related methods to [PantryEvent].
extension PantryEventPatterns on PantryEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ExtractFromImage value)?  extractFromImage,TResult Function( ExtractFromText value)?  extractFromText,TResult Function( AddItems value)?  addItems,TResult Function( AddManualItems value)?  addManualItems,TResult Function( RemoveItem value)?  removeItem,TResult Function( RemoveDetectedItem value)?  removeDetectedItem,TResult Function( ClearDetectedItems value)?  clearDetectedItems,TResult Function( RecategorizeAll value)?  recategorizeAll,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ExtractFromImage() when extractFromImage != null:
return extractFromImage(_that);case ExtractFromText() when extractFromText != null:
return extractFromText(_that);case AddItems() when addItems != null:
return addItems(_that);case AddManualItems() when addManualItems != null:
return addManualItems(_that);case RemoveItem() when removeItem != null:
return removeItem(_that);case RemoveDetectedItem() when removeDetectedItem != null:
return removeDetectedItem(_that);case ClearDetectedItems() when clearDetectedItems != null:
return clearDetectedItems(_that);case RecategorizeAll() when recategorizeAll != null:
return recategorizeAll(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ExtractFromImage value)  extractFromImage,required TResult Function( ExtractFromText value)  extractFromText,required TResult Function( AddItems value)  addItems,required TResult Function( AddManualItems value)  addManualItems,required TResult Function( RemoveItem value)  removeItem,required TResult Function( RemoveDetectedItem value)  removeDetectedItem,required TResult Function( ClearDetectedItems value)  clearDetectedItems,required TResult Function( RecategorizeAll value)  recategorizeAll,}){
final _that = this;
switch (_that) {
case ExtractFromImage():
return extractFromImage(_that);case ExtractFromText():
return extractFromText(_that);case AddItems():
return addItems(_that);case AddManualItems():
return addManualItems(_that);case RemoveItem():
return removeItem(_that);case RemoveDetectedItem():
return removeDetectedItem(_that);case ClearDetectedItems():
return clearDetectedItems(_that);case RecategorizeAll():
return recategorizeAll(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ExtractFromImage value)?  extractFromImage,TResult? Function( ExtractFromText value)?  extractFromText,TResult? Function( AddItems value)?  addItems,TResult? Function( AddManualItems value)?  addManualItems,TResult? Function( RemoveItem value)?  removeItem,TResult? Function( RemoveDetectedItem value)?  removeDetectedItem,TResult? Function( ClearDetectedItems value)?  clearDetectedItems,TResult? Function( RecategorizeAll value)?  recategorizeAll,}){
final _that = this;
switch (_that) {
case ExtractFromImage() when extractFromImage != null:
return extractFromImage(_that);case ExtractFromText() when extractFromText != null:
return extractFromText(_that);case AddItems() when addItems != null:
return addItems(_that);case AddManualItems() when addManualItems != null:
return addManualItems(_that);case RemoveItem() when removeItem != null:
return removeItem(_that);case RemoveDetectedItem() when removeDetectedItem != null:
return removeDetectedItem(_that);case ClearDetectedItems() when clearDetectedItems != null:
return clearDetectedItems(_that);case RecategorizeAll() when recategorizeAll != null:
return recategorizeAll(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String base64Image,  String mimeType)?  extractFromImage,TResult Function( String text)?  extractFromText,TResult Function( List<PantryItem> items)?  addItems,TResult Function( List<String> items)?  addManualItems,TResult Function( String item)?  removeItem,TResult Function( String item)?  removeDetectedItem,TResult Function()?  clearDetectedItems,TResult Function()?  recategorizeAll,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ExtractFromImage() when extractFromImage != null:
return extractFromImage(_that.base64Image,_that.mimeType);case ExtractFromText() when extractFromText != null:
return extractFromText(_that.text);case AddItems() when addItems != null:
return addItems(_that.items);case AddManualItems() when addManualItems != null:
return addManualItems(_that.items);case RemoveItem() when removeItem != null:
return removeItem(_that.item);case RemoveDetectedItem() when removeDetectedItem != null:
return removeDetectedItem(_that.item);case ClearDetectedItems() when clearDetectedItems != null:
return clearDetectedItems();case RecategorizeAll() when recategorizeAll != null:
return recategorizeAll();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String base64Image,  String mimeType)  extractFromImage,required TResult Function( String text)  extractFromText,required TResult Function( List<PantryItem> items)  addItems,required TResult Function( List<String> items)  addManualItems,required TResult Function( String item)  removeItem,required TResult Function( String item)  removeDetectedItem,required TResult Function()  clearDetectedItems,required TResult Function()  recategorizeAll,}) {final _that = this;
switch (_that) {
case ExtractFromImage():
return extractFromImage(_that.base64Image,_that.mimeType);case ExtractFromText():
return extractFromText(_that.text);case AddItems():
return addItems(_that.items);case AddManualItems():
return addManualItems(_that.items);case RemoveItem():
return removeItem(_that.item);case RemoveDetectedItem():
return removeDetectedItem(_that.item);case ClearDetectedItems():
return clearDetectedItems();case RecategorizeAll():
return recategorizeAll();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String base64Image,  String mimeType)?  extractFromImage,TResult? Function( String text)?  extractFromText,TResult? Function( List<PantryItem> items)?  addItems,TResult? Function( List<String> items)?  addManualItems,TResult? Function( String item)?  removeItem,TResult? Function( String item)?  removeDetectedItem,TResult? Function()?  clearDetectedItems,TResult? Function()?  recategorizeAll,}) {final _that = this;
switch (_that) {
case ExtractFromImage() when extractFromImage != null:
return extractFromImage(_that.base64Image,_that.mimeType);case ExtractFromText() when extractFromText != null:
return extractFromText(_that.text);case AddItems() when addItems != null:
return addItems(_that.items);case AddManualItems() when addManualItems != null:
return addManualItems(_that.items);case RemoveItem() when removeItem != null:
return removeItem(_that.item);case RemoveDetectedItem() when removeDetectedItem != null:
return removeDetectedItem(_that.item);case ClearDetectedItems() when clearDetectedItems != null:
return clearDetectedItems();case RecategorizeAll() when recategorizeAll != null:
return recategorizeAll();case _:
  return null;

}
}

}

/// @nodoc


class ExtractFromImage implements PantryEvent {
  const ExtractFromImage({required this.base64Image, required this.mimeType});
  

 final  String base64Image;
 final  String mimeType;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractFromImageCopyWith<ExtractFromImage> get copyWith => _$ExtractFromImageCopyWithImpl<ExtractFromImage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractFromImage&&(identical(other.base64Image, base64Image) || other.base64Image == base64Image)&&(identical(other.mimeType, mimeType) || other.mimeType == mimeType));
}


@override
int get hashCode => Object.hash(runtimeType,base64Image,mimeType);

@override
String toString() {
  return 'PantryEvent.extractFromImage(base64Image: $base64Image, mimeType: $mimeType)';
}


}

/// @nodoc
abstract mixin class $ExtractFromImageCopyWith<$Res> implements $PantryEventCopyWith<$Res> {
  factory $ExtractFromImageCopyWith(ExtractFromImage value, $Res Function(ExtractFromImage) _then) = _$ExtractFromImageCopyWithImpl;
@useResult
$Res call({
 String base64Image, String mimeType
});




}
/// @nodoc
class _$ExtractFromImageCopyWithImpl<$Res>
    implements $ExtractFromImageCopyWith<$Res> {
  _$ExtractFromImageCopyWithImpl(this._self, this._then);

  final ExtractFromImage _self;
  final $Res Function(ExtractFromImage) _then;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? base64Image = null,Object? mimeType = null,}) {
  return _then(ExtractFromImage(
base64Image: null == base64Image ? _self.base64Image : base64Image // ignore: cast_nullable_to_non_nullable
as String,mimeType: null == mimeType ? _self.mimeType : mimeType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ExtractFromText implements PantryEvent {
  const ExtractFromText({required this.text});
  

 final  String text;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtractFromTextCopyWith<ExtractFromText> get copyWith => _$ExtractFromTextCopyWithImpl<ExtractFromText>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtractFromText&&(identical(other.text, text) || other.text == text));
}


@override
int get hashCode => Object.hash(runtimeType,text);

@override
String toString() {
  return 'PantryEvent.extractFromText(text: $text)';
}


}

/// @nodoc
abstract mixin class $ExtractFromTextCopyWith<$Res> implements $PantryEventCopyWith<$Res> {
  factory $ExtractFromTextCopyWith(ExtractFromText value, $Res Function(ExtractFromText) _then) = _$ExtractFromTextCopyWithImpl;
@useResult
$Res call({
 String text
});




}
/// @nodoc
class _$ExtractFromTextCopyWithImpl<$Res>
    implements $ExtractFromTextCopyWith<$Res> {
  _$ExtractFromTextCopyWithImpl(this._self, this._then);

  final ExtractFromText _self;
  final $Res Function(ExtractFromText) _then;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? text = null,}) {
  return _then(ExtractFromText(
text: null == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AddItems implements PantryEvent {
  const AddItems(final  List<PantryItem> items): _items = items;
  

 final  List<PantryItem> _items;
 List<PantryItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddItemsCopyWith<AddItems> get copyWith => _$AddItemsCopyWithImpl<AddItems>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddItems&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'PantryEvent.addItems(items: $items)';
}


}

/// @nodoc
abstract mixin class $AddItemsCopyWith<$Res> implements $PantryEventCopyWith<$Res> {
  factory $AddItemsCopyWith(AddItems value, $Res Function(AddItems) _then) = _$AddItemsCopyWithImpl;
@useResult
$Res call({
 List<PantryItem> items
});




}
/// @nodoc
class _$AddItemsCopyWithImpl<$Res>
    implements $AddItemsCopyWith<$Res> {
  _$AddItemsCopyWithImpl(this._self, this._then);

  final AddItems _self;
  final $Res Function(AddItems) _then;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(AddItems(
null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PantryItem>,
  ));
}


}

/// @nodoc


class AddManualItems implements PantryEvent {
  const AddManualItems(final  List<String> items): _items = items;
  

 final  List<String> _items;
 List<String> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddManualItemsCopyWith<AddManualItems> get copyWith => _$AddManualItemsCopyWithImpl<AddManualItems>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddManualItems&&const DeepCollectionEquality().equals(other._items, _items));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'PantryEvent.addManualItems(items: $items)';
}


}

/// @nodoc
abstract mixin class $AddManualItemsCopyWith<$Res> implements $PantryEventCopyWith<$Res> {
  factory $AddManualItemsCopyWith(AddManualItems value, $Res Function(AddManualItems) _then) = _$AddManualItemsCopyWithImpl;
@useResult
$Res call({
 List<String> items
});




}
/// @nodoc
class _$AddManualItemsCopyWithImpl<$Res>
    implements $AddManualItemsCopyWith<$Res> {
  _$AddManualItemsCopyWithImpl(this._self, this._then);

  final AddManualItems _self;
  final $Res Function(AddManualItems) _then;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(AddManualItems(
null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class RemoveItem implements PantryEvent {
  const RemoveItem(this.item);
  

 final  String item;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveItemCopyWith<RemoveItem> get copyWith => _$RemoveItemCopyWithImpl<RemoveItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveItem&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'PantryEvent.removeItem(item: $item)';
}


}

/// @nodoc
abstract mixin class $RemoveItemCopyWith<$Res> implements $PantryEventCopyWith<$Res> {
  factory $RemoveItemCopyWith(RemoveItem value, $Res Function(RemoveItem) _then) = _$RemoveItemCopyWithImpl;
@useResult
$Res call({
 String item
});




}
/// @nodoc
class _$RemoveItemCopyWithImpl<$Res>
    implements $RemoveItemCopyWith<$Res> {
  _$RemoveItemCopyWithImpl(this._self, this._then);

  final RemoveItem _self;
  final $Res Function(RemoveItem) _then;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(RemoveItem(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveDetectedItem implements PantryEvent {
  const RemoveDetectedItem(this.item);
  

 final  String item;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveDetectedItemCopyWith<RemoveDetectedItem> get copyWith => _$RemoveDetectedItemCopyWithImpl<RemoveDetectedItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveDetectedItem&&(identical(other.item, item) || other.item == item));
}


@override
int get hashCode => Object.hash(runtimeType,item);

@override
String toString() {
  return 'PantryEvent.removeDetectedItem(item: $item)';
}


}

/// @nodoc
abstract mixin class $RemoveDetectedItemCopyWith<$Res> implements $PantryEventCopyWith<$Res> {
  factory $RemoveDetectedItemCopyWith(RemoveDetectedItem value, $Res Function(RemoveDetectedItem) _then) = _$RemoveDetectedItemCopyWithImpl;
@useResult
$Res call({
 String item
});




}
/// @nodoc
class _$RemoveDetectedItemCopyWithImpl<$Res>
    implements $RemoveDetectedItemCopyWith<$Res> {
  _$RemoveDetectedItemCopyWithImpl(this._self, this._then);

  final RemoveDetectedItem _self;
  final $Res Function(RemoveDetectedItem) _then;

/// Create a copy of PantryEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? item = null,}) {
  return _then(RemoveDetectedItem(
null == item ? _self.item : item // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearDetectedItems implements PantryEvent {
  const ClearDetectedItems();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearDetectedItems);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PantryEvent.clearDetectedItems()';
}


}




/// @nodoc


class RecategorizeAll implements PantryEvent {
  const RecategorizeAll();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecategorizeAll);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PantryEvent.recategorizeAll()';
}


}





/// @nodoc
mixin _$PantryState {

 List<PantryItem> get pantryItems; List<PantryItem> get detectedItems; PantryLoadingState get extractionLoadingState; bool get isCategorizing; String? get errorMessage;
/// Create a copy of PantryState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PantryStateCopyWith<PantryState> get copyWith => _$PantryStateCopyWithImpl<PantryState>(this as PantryState, _$identity);

  /// Serializes this PantryState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PantryState&&const DeepCollectionEquality().equals(other.pantryItems, pantryItems)&&const DeepCollectionEquality().equals(other.detectedItems, detectedItems)&&(identical(other.extractionLoadingState, extractionLoadingState) || other.extractionLoadingState == extractionLoadingState)&&(identical(other.isCategorizing, isCategorizing) || other.isCategorizing == isCategorizing)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(pantryItems),const DeepCollectionEquality().hash(detectedItems),extractionLoadingState,isCategorizing,errorMessage);

@override
String toString() {
  return 'PantryState(pantryItems: $pantryItems, detectedItems: $detectedItems, extractionLoadingState: $extractionLoadingState, isCategorizing: $isCategorizing, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PantryStateCopyWith<$Res>  {
  factory $PantryStateCopyWith(PantryState value, $Res Function(PantryState) _then) = _$PantryStateCopyWithImpl;
@useResult
$Res call({
 List<PantryItem> pantryItems, List<PantryItem> detectedItems, PantryLoadingState extractionLoadingState, bool isCategorizing, String? errorMessage
});




}
/// @nodoc
class _$PantryStateCopyWithImpl<$Res>
    implements $PantryStateCopyWith<$Res> {
  _$PantryStateCopyWithImpl(this._self, this._then);

  final PantryState _self;
  final $Res Function(PantryState) _then;

/// Create a copy of PantryState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? pantryItems = null,Object? detectedItems = null,Object? extractionLoadingState = null,Object? isCategorizing = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
pantryItems: null == pantryItems ? _self.pantryItems : pantryItems // ignore: cast_nullable_to_non_nullable
as List<PantryItem>,detectedItems: null == detectedItems ? _self.detectedItems : detectedItems // ignore: cast_nullable_to_non_nullable
as List<PantryItem>,extractionLoadingState: null == extractionLoadingState ? _self.extractionLoadingState : extractionLoadingState // ignore: cast_nullable_to_non_nullable
as PantryLoadingState,isCategorizing: null == isCategorizing ? _self.isCategorizing : isCategorizing // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PantryState].
extension PantryStatePatterns on PantryState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PantryState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PantryState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PantryState value)  $default,){
final _that = this;
switch (_that) {
case _PantryState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PantryState value)?  $default,){
final _that = this;
switch (_that) {
case _PantryState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PantryItem> pantryItems,  List<PantryItem> detectedItems,  PantryLoadingState extractionLoadingState,  bool isCategorizing,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PantryState() when $default != null:
return $default(_that.pantryItems,_that.detectedItems,_that.extractionLoadingState,_that.isCategorizing,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PantryItem> pantryItems,  List<PantryItem> detectedItems,  PantryLoadingState extractionLoadingState,  bool isCategorizing,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _PantryState():
return $default(_that.pantryItems,_that.detectedItems,_that.extractionLoadingState,_that.isCategorizing,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PantryItem> pantryItems,  List<PantryItem> detectedItems,  PantryLoadingState extractionLoadingState,  bool isCategorizing,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _PantryState() when $default != null:
return $default(_that.pantryItems,_that.detectedItems,_that.extractionLoadingState,_that.isCategorizing,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PantryState implements PantryState {
  const _PantryState({final  List<PantryItem> pantryItems = const [], final  List<PantryItem> detectedItems = const [], this.extractionLoadingState = PantryLoadingState.init, this.isCategorizing = false, this.errorMessage}): _pantryItems = pantryItems,_detectedItems = detectedItems;
  factory _PantryState.fromJson(Map<String, dynamic> json) => _$PantryStateFromJson(json);

 final  List<PantryItem> _pantryItems;
@override@JsonKey() List<PantryItem> get pantryItems {
  if (_pantryItems is EqualUnmodifiableListView) return _pantryItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pantryItems);
}

 final  List<PantryItem> _detectedItems;
@override@JsonKey() List<PantryItem> get detectedItems {
  if (_detectedItems is EqualUnmodifiableListView) return _detectedItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_detectedItems);
}

@override@JsonKey() final  PantryLoadingState extractionLoadingState;
@override@JsonKey() final  bool isCategorizing;
@override final  String? errorMessage;

/// Create a copy of PantryState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PantryStateCopyWith<_PantryState> get copyWith => __$PantryStateCopyWithImpl<_PantryState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PantryStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PantryState&&const DeepCollectionEquality().equals(other._pantryItems, _pantryItems)&&const DeepCollectionEquality().equals(other._detectedItems, _detectedItems)&&(identical(other.extractionLoadingState, extractionLoadingState) || other.extractionLoadingState == extractionLoadingState)&&(identical(other.isCategorizing, isCategorizing) || other.isCategorizing == isCategorizing)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_pantryItems),const DeepCollectionEquality().hash(_detectedItems),extractionLoadingState,isCategorizing,errorMessage);

@override
String toString() {
  return 'PantryState(pantryItems: $pantryItems, detectedItems: $detectedItems, extractionLoadingState: $extractionLoadingState, isCategorizing: $isCategorizing, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$PantryStateCopyWith<$Res> implements $PantryStateCopyWith<$Res> {
  factory _$PantryStateCopyWith(_PantryState value, $Res Function(_PantryState) _then) = __$PantryStateCopyWithImpl;
@override @useResult
$Res call({
 List<PantryItem> pantryItems, List<PantryItem> detectedItems, PantryLoadingState extractionLoadingState, bool isCategorizing, String? errorMessage
});




}
/// @nodoc
class __$PantryStateCopyWithImpl<$Res>
    implements _$PantryStateCopyWith<$Res> {
  __$PantryStateCopyWithImpl(this._self, this._then);

  final _PantryState _self;
  final $Res Function(_PantryState) _then;

/// Create a copy of PantryState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? pantryItems = null,Object? detectedItems = null,Object? extractionLoadingState = null,Object? isCategorizing = null,Object? errorMessage = freezed,}) {
  return _then(_PantryState(
pantryItems: null == pantryItems ? _self._pantryItems : pantryItems // ignore: cast_nullable_to_non_nullable
as List<PantryItem>,detectedItems: null == detectedItems ? _self._detectedItems : detectedItems // ignore: cast_nullable_to_non_nullable
as List<PantryItem>,extractionLoadingState: null == extractionLoadingState ? _self.extractionLoadingState : extractionLoadingState // ignore: cast_nullable_to_non_nullable
as PantryLoadingState,isCategorizing: null == isCategorizing ? _self.isCategorizing : isCategorizing // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
