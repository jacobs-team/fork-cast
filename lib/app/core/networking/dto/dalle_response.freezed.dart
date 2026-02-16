// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dalle_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DalleResponse {

 int get created; List<DalleImageData> get data;
/// Create a copy of DalleResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DalleResponseCopyWith<DalleResponse> get copyWith => _$DalleResponseCopyWithImpl<DalleResponse>(this as DalleResponse, _$identity);

  /// Serializes this DalleResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DalleResponse&&(identical(other.created, created) || other.created == created)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,created,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'DalleResponse(created: $created, data: $data)';
}


}

/// @nodoc
abstract mixin class $DalleResponseCopyWith<$Res>  {
  factory $DalleResponseCopyWith(DalleResponse value, $Res Function(DalleResponse) _then) = _$DalleResponseCopyWithImpl;
@useResult
$Res call({
 int created, List<DalleImageData> data
});




}
/// @nodoc
class _$DalleResponseCopyWithImpl<$Res>
    implements $DalleResponseCopyWith<$Res> {
  _$DalleResponseCopyWithImpl(this._self, this._then);

  final DalleResponse _self;
  final $Res Function(DalleResponse) _then;

/// Create a copy of DalleResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? created = null,Object? data = null,}) {
  return _then(_self.copyWith(
created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DalleImageData>,
  ));
}

}


/// Adds pattern-matching-related methods to [DalleResponse].
extension DalleResponsePatterns on DalleResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DalleResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DalleResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DalleResponse value)  $default,){
final _that = this;
switch (_that) {
case _DalleResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DalleResponse value)?  $default,){
final _that = this;
switch (_that) {
case _DalleResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int created,  List<DalleImageData> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DalleResponse() when $default != null:
return $default(_that.created,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int created,  List<DalleImageData> data)  $default,) {final _that = this;
switch (_that) {
case _DalleResponse():
return $default(_that.created,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int created,  List<DalleImageData> data)?  $default,) {final _that = this;
switch (_that) {
case _DalleResponse() when $default != null:
return $default(_that.created,_that.data);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DalleResponse implements DalleResponse {
  const _DalleResponse({required this.created, required final  List<DalleImageData> data}): _data = data;
  factory _DalleResponse.fromJson(Map<String, dynamic> json) => _$DalleResponseFromJson(json);

@override final  int created;
 final  List<DalleImageData> _data;
@override List<DalleImageData> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of DalleResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DalleResponseCopyWith<_DalleResponse> get copyWith => __$DalleResponseCopyWithImpl<_DalleResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DalleResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DalleResponse&&(identical(other.created, created) || other.created == created)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,created,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'DalleResponse(created: $created, data: $data)';
}


}

/// @nodoc
abstract mixin class _$DalleResponseCopyWith<$Res> implements $DalleResponseCopyWith<$Res> {
  factory _$DalleResponseCopyWith(_DalleResponse value, $Res Function(_DalleResponse) _then) = __$DalleResponseCopyWithImpl;
@override @useResult
$Res call({
 int created, List<DalleImageData> data
});




}
/// @nodoc
class __$DalleResponseCopyWithImpl<$Res>
    implements _$DalleResponseCopyWith<$Res> {
  __$DalleResponseCopyWithImpl(this._self, this._then);

  final _DalleResponse _self;
  final $Res Function(_DalleResponse) _then;

/// Create a copy of DalleResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? created = null,Object? data = null,}) {
  return _then(_DalleResponse(
created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DalleImageData>,
  ));
}


}


/// @nodoc
mixin _$DalleImageData {

 String get url; String? get revisedPrompt;
/// Create a copy of DalleImageData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DalleImageDataCopyWith<DalleImageData> get copyWith => _$DalleImageDataCopyWithImpl<DalleImageData>(this as DalleImageData, _$identity);

  /// Serializes this DalleImageData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DalleImageData&&(identical(other.url, url) || other.url == url)&&(identical(other.revisedPrompt, revisedPrompt) || other.revisedPrompt == revisedPrompt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,revisedPrompt);

@override
String toString() {
  return 'DalleImageData(url: $url, revisedPrompt: $revisedPrompt)';
}


}

/// @nodoc
abstract mixin class $DalleImageDataCopyWith<$Res>  {
  factory $DalleImageDataCopyWith(DalleImageData value, $Res Function(DalleImageData) _then) = _$DalleImageDataCopyWithImpl;
@useResult
$Res call({
 String url, String? revisedPrompt
});




}
/// @nodoc
class _$DalleImageDataCopyWithImpl<$Res>
    implements $DalleImageDataCopyWith<$Res> {
  _$DalleImageDataCopyWithImpl(this._self, this._then);

  final DalleImageData _self;
  final $Res Function(DalleImageData) _then;

/// Create a copy of DalleImageData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? url = null,Object? revisedPrompt = freezed,}) {
  return _then(_self.copyWith(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,revisedPrompt: freezed == revisedPrompt ? _self.revisedPrompt : revisedPrompt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DalleImageData].
extension DalleImageDataPatterns on DalleImageData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DalleImageData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DalleImageData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DalleImageData value)  $default,){
final _that = this;
switch (_that) {
case _DalleImageData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DalleImageData value)?  $default,){
final _that = this;
switch (_that) {
case _DalleImageData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String url,  String? revisedPrompt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DalleImageData() when $default != null:
return $default(_that.url,_that.revisedPrompt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String url,  String? revisedPrompt)  $default,) {final _that = this;
switch (_that) {
case _DalleImageData():
return $default(_that.url,_that.revisedPrompt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String url,  String? revisedPrompt)?  $default,) {final _that = this;
switch (_that) {
case _DalleImageData() when $default != null:
return $default(_that.url,_that.revisedPrompt);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DalleImageData implements DalleImageData {
  const _DalleImageData({required this.url, this.revisedPrompt});
  factory _DalleImageData.fromJson(Map<String, dynamic> json) => _$DalleImageDataFromJson(json);

@override final  String url;
@override final  String? revisedPrompt;

/// Create a copy of DalleImageData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DalleImageDataCopyWith<_DalleImageData> get copyWith => __$DalleImageDataCopyWithImpl<_DalleImageData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DalleImageDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DalleImageData&&(identical(other.url, url) || other.url == url)&&(identical(other.revisedPrompt, revisedPrompt) || other.revisedPrompt == revisedPrompt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,url,revisedPrompt);

@override
String toString() {
  return 'DalleImageData(url: $url, revisedPrompt: $revisedPrompt)';
}


}

/// @nodoc
abstract mixin class _$DalleImageDataCopyWith<$Res> implements $DalleImageDataCopyWith<$Res> {
  factory _$DalleImageDataCopyWith(_DalleImageData value, $Res Function(_DalleImageData) _then) = __$DalleImageDataCopyWithImpl;
@override @useResult
$Res call({
 String url, String? revisedPrompt
});




}
/// @nodoc
class __$DalleImageDataCopyWithImpl<$Res>
    implements _$DalleImageDataCopyWith<$Res> {
  __$DalleImageDataCopyWithImpl(this._self, this._then);

  final _DalleImageData _self;
  final $Res Function(_DalleImageData) _then;

/// Create a copy of DalleImageData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? url = null,Object? revisedPrompt = freezed,}) {
  return _then(_DalleImageData(
url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,revisedPrompt: freezed == revisedPrompt ? _self.revisedPrompt : revisedPrompt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
