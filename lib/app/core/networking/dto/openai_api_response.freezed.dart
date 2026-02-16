// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'openai_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenAIApiResponse {

 String get id; String get object; int get created; String get model; List<OpenAIChoice> get choices; OpenAIUsage get usage; String? get serviceTier; String? get systemFingerprint;
/// Create a copy of OpenAIApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAIApiResponseCopyWith<OpenAIApiResponse> get copyWith => _$OpenAIApiResponseCopyWithImpl<OpenAIApiResponse>(this as OpenAIApiResponse, _$identity);

  /// Serializes this OpenAIApiResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAIApiResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other.choices, choices)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.serviceTier, serviceTier) || other.serviceTier == serviceTier)&&(identical(other.systemFingerprint, systemFingerprint) || other.systemFingerprint == systemFingerprint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,model,const DeepCollectionEquality().hash(choices),usage,serviceTier,systemFingerprint);

@override
String toString() {
  return 'OpenAIApiResponse(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage, serviceTier: $serviceTier, systemFingerprint: $systemFingerprint)';
}


}

/// @nodoc
abstract mixin class $OpenAIApiResponseCopyWith<$Res>  {
  factory $OpenAIApiResponseCopyWith(OpenAIApiResponse value, $Res Function(OpenAIApiResponse) _then) = _$OpenAIApiResponseCopyWithImpl;
@useResult
$Res call({
 String id, String object, int created, String model, List<OpenAIChoice> choices, OpenAIUsage usage, String? serviceTier, String? systemFingerprint
});


$OpenAIUsageCopyWith<$Res> get usage;

}
/// @nodoc
class _$OpenAIApiResponseCopyWithImpl<$Res>
    implements $OpenAIApiResponseCopyWith<$Res> {
  _$OpenAIApiResponseCopyWithImpl(this._self, this._then);

  final OpenAIApiResponse _self;
  final $Res Function(OpenAIApiResponse) _then;

/// Create a copy of OpenAIApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = null,Object? serviceTier = freezed,Object? systemFingerprint = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self.choices : choices // ignore: cast_nullable_to_non_nullable
as List<OpenAIChoice>,usage: null == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as OpenAIUsage,serviceTier: freezed == serviceTier ? _self.serviceTier : serviceTier // ignore: cast_nullable_to_non_nullable
as String?,systemFingerprint: freezed == systemFingerprint ? _self.systemFingerprint : systemFingerprint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of OpenAIApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAIUsageCopyWith<$Res> get usage {
  
  return $OpenAIUsageCopyWith<$Res>(_self.usage, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// Adds pattern-matching-related methods to [OpenAIApiResponse].
extension OpenAIApiResponsePatterns on OpenAIApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAIApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAIApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAIApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _OpenAIApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAIApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAIApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<OpenAIChoice> choices,  OpenAIUsage usage,  String? serviceTier,  String? systemFingerprint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAIApiResponse() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage,_that.serviceTier,_that.systemFingerprint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String object,  int created,  String model,  List<OpenAIChoice> choices,  OpenAIUsage usage,  String? serviceTier,  String? systemFingerprint)  $default,) {final _that = this;
switch (_that) {
case _OpenAIApiResponse():
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage,_that.serviceTier,_that.systemFingerprint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String object,  int created,  String model,  List<OpenAIChoice> choices,  OpenAIUsage usage,  String? serviceTier,  String? systemFingerprint)?  $default,) {final _that = this;
switch (_that) {
case _OpenAIApiResponse() when $default != null:
return $default(_that.id,_that.object,_that.created,_that.model,_that.choices,_that.usage,_that.serviceTier,_that.systemFingerprint);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OpenAIApiResponse implements OpenAIApiResponse {
  const _OpenAIApiResponse({required this.id, required this.object, required this.created, required this.model, required final  List<OpenAIChoice> choices, required this.usage, this.serviceTier, this.systemFingerprint}): _choices = choices;
  factory _OpenAIApiResponse.fromJson(Map<String, dynamic> json) => _$OpenAIApiResponseFromJson(json);

@override final  String id;
@override final  String object;
@override final  int created;
@override final  String model;
 final  List<OpenAIChoice> _choices;
@override List<OpenAIChoice> get choices {
  if (_choices is EqualUnmodifiableListView) return _choices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_choices);
}

@override final  OpenAIUsage usage;
@override final  String? serviceTier;
@override final  String? systemFingerprint;

/// Create a copy of OpenAIApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAIApiResponseCopyWith<_OpenAIApiResponse> get copyWith => __$OpenAIApiResponseCopyWithImpl<_OpenAIApiResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenAIApiResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAIApiResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.object, object) || other.object == object)&&(identical(other.created, created) || other.created == created)&&(identical(other.model, model) || other.model == model)&&const DeepCollectionEquality().equals(other._choices, _choices)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.serviceTier, serviceTier) || other.serviceTier == serviceTier)&&(identical(other.systemFingerprint, systemFingerprint) || other.systemFingerprint == systemFingerprint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,object,created,model,const DeepCollectionEquality().hash(_choices),usage,serviceTier,systemFingerprint);

@override
String toString() {
  return 'OpenAIApiResponse(id: $id, object: $object, created: $created, model: $model, choices: $choices, usage: $usage, serviceTier: $serviceTier, systemFingerprint: $systemFingerprint)';
}


}

/// @nodoc
abstract mixin class _$OpenAIApiResponseCopyWith<$Res> implements $OpenAIApiResponseCopyWith<$Res> {
  factory _$OpenAIApiResponseCopyWith(_OpenAIApiResponse value, $Res Function(_OpenAIApiResponse) _then) = __$OpenAIApiResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String object, int created, String model, List<OpenAIChoice> choices, OpenAIUsage usage, String? serviceTier, String? systemFingerprint
});


@override $OpenAIUsageCopyWith<$Res> get usage;

}
/// @nodoc
class __$OpenAIApiResponseCopyWithImpl<$Res>
    implements _$OpenAIApiResponseCopyWith<$Res> {
  __$OpenAIApiResponseCopyWithImpl(this._self, this._then);

  final _OpenAIApiResponse _self;
  final $Res Function(_OpenAIApiResponse) _then;

/// Create a copy of OpenAIApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? object = null,Object? created = null,Object? model = null,Object? choices = null,Object? usage = null,Object? serviceTier = freezed,Object? systemFingerprint = freezed,}) {
  return _then(_OpenAIApiResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,object: null == object ? _self.object : object // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as int,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,choices: null == choices ? _self._choices : choices // ignore: cast_nullable_to_non_nullable
as List<OpenAIChoice>,usage: null == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as OpenAIUsage,serviceTier: freezed == serviceTier ? _self.serviceTier : serviceTier // ignore: cast_nullable_to_non_nullable
as String?,systemFingerprint: freezed == systemFingerprint ? _self.systemFingerprint : systemFingerprint // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of OpenAIApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAIUsageCopyWith<$Res> get usage {
  
  return $OpenAIUsageCopyWith<$Res>(_self.usage, (value) {
    return _then(_self.copyWith(usage: value));
  });
}
}


/// @nodoc
mixin _$OpenAIChoice {

 int get index; OpenAIMessage get message; String? get finishReason; dynamic get logprobs;
/// Create a copy of OpenAIChoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAIChoiceCopyWith<OpenAIChoice> get copyWith => _$OpenAIChoiceCopyWithImpl<OpenAIChoice>(this as OpenAIChoice, _$identity);

  /// Serializes this OpenAIChoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAIChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&const DeepCollectionEquality().equals(other.logprobs, logprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,finishReason,const DeepCollectionEquality().hash(logprobs));

@override
String toString() {
  return 'OpenAIChoice(index: $index, message: $message, finishReason: $finishReason, logprobs: $logprobs)';
}


}

/// @nodoc
abstract mixin class $OpenAIChoiceCopyWith<$Res>  {
  factory $OpenAIChoiceCopyWith(OpenAIChoice value, $Res Function(OpenAIChoice) _then) = _$OpenAIChoiceCopyWithImpl;
@useResult
$Res call({
 int index, OpenAIMessage message, String? finishReason, dynamic logprobs
});


$OpenAIMessageCopyWith<$Res> get message;

}
/// @nodoc
class _$OpenAIChoiceCopyWithImpl<$Res>
    implements $OpenAIChoiceCopyWith<$Res> {
  _$OpenAIChoiceCopyWithImpl(this._self, this._then);

  final OpenAIChoice _self;
  final $Res Function(OpenAIChoice) _then;

/// Create a copy of OpenAIChoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? index = null,Object? message = null,Object? finishReason = freezed,Object? logprobs = freezed,}) {
  return _then(_self.copyWith(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as OpenAIMessage,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,logprobs: freezed == logprobs ? _self.logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of OpenAIChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAIMessageCopyWith<$Res> get message {
  
  return $OpenAIMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// Adds pattern-matching-related methods to [OpenAIChoice].
extension OpenAIChoicePatterns on OpenAIChoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAIChoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAIChoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAIChoice value)  $default,){
final _that = this;
switch (_that) {
case _OpenAIChoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAIChoice value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAIChoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int index,  OpenAIMessage message,  String? finishReason,  dynamic logprobs)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAIChoice() when $default != null:
return $default(_that.index,_that.message,_that.finishReason,_that.logprobs);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int index,  OpenAIMessage message,  String? finishReason,  dynamic logprobs)  $default,) {final _that = this;
switch (_that) {
case _OpenAIChoice():
return $default(_that.index,_that.message,_that.finishReason,_that.logprobs);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int index,  OpenAIMessage message,  String? finishReason,  dynamic logprobs)?  $default,) {final _that = this;
switch (_that) {
case _OpenAIChoice() when $default != null:
return $default(_that.index,_that.message,_that.finishReason,_that.logprobs);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OpenAIChoice implements OpenAIChoice {
  const _OpenAIChoice({required this.index, required this.message, this.finishReason, this.logprobs});
  factory _OpenAIChoice.fromJson(Map<String, dynamic> json) => _$OpenAIChoiceFromJson(json);

@override final  int index;
@override final  OpenAIMessage message;
@override final  String? finishReason;
@override final  dynamic logprobs;

/// Create a copy of OpenAIChoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAIChoiceCopyWith<_OpenAIChoice> get copyWith => __$OpenAIChoiceCopyWithImpl<_OpenAIChoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenAIChoiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAIChoice&&(identical(other.index, index) || other.index == index)&&(identical(other.message, message) || other.message == message)&&(identical(other.finishReason, finishReason) || other.finishReason == finishReason)&&const DeepCollectionEquality().equals(other.logprobs, logprobs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,index,message,finishReason,const DeepCollectionEquality().hash(logprobs));

@override
String toString() {
  return 'OpenAIChoice(index: $index, message: $message, finishReason: $finishReason, logprobs: $logprobs)';
}


}

/// @nodoc
abstract mixin class _$OpenAIChoiceCopyWith<$Res> implements $OpenAIChoiceCopyWith<$Res> {
  factory _$OpenAIChoiceCopyWith(_OpenAIChoice value, $Res Function(_OpenAIChoice) _then) = __$OpenAIChoiceCopyWithImpl;
@override @useResult
$Res call({
 int index, OpenAIMessage message, String? finishReason, dynamic logprobs
});


@override $OpenAIMessageCopyWith<$Res> get message;

}
/// @nodoc
class __$OpenAIChoiceCopyWithImpl<$Res>
    implements _$OpenAIChoiceCopyWith<$Res> {
  __$OpenAIChoiceCopyWithImpl(this._self, this._then);

  final _OpenAIChoice _self;
  final $Res Function(_OpenAIChoice) _then;

/// Create a copy of OpenAIChoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? index = null,Object? message = null,Object? finishReason = freezed,Object? logprobs = freezed,}) {
  return _then(_OpenAIChoice(
index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as OpenAIMessage,finishReason: freezed == finishReason ? _self.finishReason : finishReason // ignore: cast_nullable_to_non_nullable
as String?,logprobs: freezed == logprobs ? _self.logprobs : logprobs // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of OpenAIChoice
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OpenAIMessageCopyWith<$Res> get message {
  
  return $OpenAIMessageCopyWith<$Res>(_self.message, (value) {
    return _then(_self.copyWith(message: value));
  });
}
}


/// @nodoc
mixin _$OpenAIMessage {

 String get role; String get content; String? get refusal; List<dynamic> get annotations;
/// Create a copy of OpenAIMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAIMessageCopyWith<OpenAIMessage> get copyWith => _$OpenAIMessageCopyWithImpl<OpenAIMessage>(this as OpenAIMessage, _$identity);

  /// Serializes this OpenAIMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAIMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.refusal, refusal) || other.refusal == refusal)&&const DeepCollectionEquality().equals(other.annotations, annotations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,refusal,const DeepCollectionEquality().hash(annotations));

@override
String toString() {
  return 'OpenAIMessage(role: $role, content: $content, refusal: $refusal, annotations: $annotations)';
}


}

/// @nodoc
abstract mixin class $OpenAIMessageCopyWith<$Res>  {
  factory $OpenAIMessageCopyWith(OpenAIMessage value, $Res Function(OpenAIMessage) _then) = _$OpenAIMessageCopyWithImpl;
@useResult
$Res call({
 String role, String content, String? refusal, List<dynamic> annotations
});




}
/// @nodoc
class _$OpenAIMessageCopyWithImpl<$Res>
    implements $OpenAIMessageCopyWith<$Res> {
  _$OpenAIMessageCopyWithImpl(this._self, this._then);

  final OpenAIMessage _self;
  final $Res Function(OpenAIMessage) _then;

/// Create a copy of OpenAIMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? role = null,Object? content = null,Object? refusal = freezed,Object? annotations = null,}) {
  return _then(_self.copyWith(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,annotations: null == annotations ? _self.annotations : annotations // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenAIMessage].
extension OpenAIMessagePatterns on OpenAIMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAIMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAIMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAIMessage value)  $default,){
final _that = this;
switch (_that) {
case _OpenAIMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAIMessage value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAIMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String role,  String content,  String? refusal,  List<dynamic> annotations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAIMessage() when $default != null:
return $default(_that.role,_that.content,_that.refusal,_that.annotations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String role,  String content,  String? refusal,  List<dynamic> annotations)  $default,) {final _that = this;
switch (_that) {
case _OpenAIMessage():
return $default(_that.role,_that.content,_that.refusal,_that.annotations);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String role,  String content,  String? refusal,  List<dynamic> annotations)?  $default,) {final _that = this;
switch (_that) {
case _OpenAIMessage() when $default != null:
return $default(_that.role,_that.content,_that.refusal,_that.annotations);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OpenAIMessage implements OpenAIMessage {
  const _OpenAIMessage({required this.role, required this.content, this.refusal, final  List<dynamic> annotations = const []}): _annotations = annotations;
  factory _OpenAIMessage.fromJson(Map<String, dynamic> json) => _$OpenAIMessageFromJson(json);

@override final  String role;
@override final  String content;
@override final  String? refusal;
 final  List<dynamic> _annotations;
@override@JsonKey() List<dynamic> get annotations {
  if (_annotations is EqualUnmodifiableListView) return _annotations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_annotations);
}


/// Create a copy of OpenAIMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAIMessageCopyWith<_OpenAIMessage> get copyWith => __$OpenAIMessageCopyWithImpl<_OpenAIMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenAIMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAIMessage&&(identical(other.role, role) || other.role == role)&&(identical(other.content, content) || other.content == content)&&(identical(other.refusal, refusal) || other.refusal == refusal)&&const DeepCollectionEquality().equals(other._annotations, _annotations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,role,content,refusal,const DeepCollectionEquality().hash(_annotations));

@override
String toString() {
  return 'OpenAIMessage(role: $role, content: $content, refusal: $refusal, annotations: $annotations)';
}


}

/// @nodoc
abstract mixin class _$OpenAIMessageCopyWith<$Res> implements $OpenAIMessageCopyWith<$Res> {
  factory _$OpenAIMessageCopyWith(_OpenAIMessage value, $Res Function(_OpenAIMessage) _then) = __$OpenAIMessageCopyWithImpl;
@override @useResult
$Res call({
 String role, String content, String? refusal, List<dynamic> annotations
});




}
/// @nodoc
class __$OpenAIMessageCopyWithImpl<$Res>
    implements _$OpenAIMessageCopyWith<$Res> {
  __$OpenAIMessageCopyWithImpl(this._self, this._then);

  final _OpenAIMessage _self;
  final $Res Function(_OpenAIMessage) _then;

/// Create a copy of OpenAIMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? role = null,Object? content = null,Object? refusal = freezed,Object? annotations = null,}) {
  return _then(_OpenAIMessage(
role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,content: null == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String,refusal: freezed == refusal ? _self.refusal : refusal // ignore: cast_nullable_to_non_nullable
as String?,annotations: null == annotations ? _self._annotations : annotations // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}


/// @nodoc
mixin _$OpenAIUsage {

 int get promptTokens; int get completionTokens; int get totalTokens; Map<String, dynamic>? get promptTokensDetails; Map<String, dynamic>? get completionTokensDetails;
/// Create a copy of OpenAIUsage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAIUsageCopyWith<OpenAIUsage> get copyWith => _$OpenAIUsageCopyWithImpl<OpenAIUsage>(this as OpenAIUsage, _$identity);

  /// Serializes this OpenAIUsage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAIUsage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&const DeepCollectionEquality().equals(other.promptTokensDetails, promptTokensDetails)&&const DeepCollectionEquality().equals(other.completionTokensDetails, completionTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokens,completionTokens,totalTokens,const DeepCollectionEquality().hash(promptTokensDetails),const DeepCollectionEquality().hash(completionTokensDetails));

@override
String toString() {
  return 'OpenAIUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens, promptTokensDetails: $promptTokensDetails, completionTokensDetails: $completionTokensDetails)';
}


}

/// @nodoc
abstract mixin class $OpenAIUsageCopyWith<$Res>  {
  factory $OpenAIUsageCopyWith(OpenAIUsage value, $Res Function(OpenAIUsage) _then) = _$OpenAIUsageCopyWithImpl;
@useResult
$Res call({
 int promptTokens, int completionTokens, int totalTokens, Map<String, dynamic>? promptTokensDetails, Map<String, dynamic>? completionTokensDetails
});




}
/// @nodoc
class _$OpenAIUsageCopyWithImpl<$Res>
    implements $OpenAIUsageCopyWith<$Res> {
  _$OpenAIUsageCopyWithImpl(this._self, this._then);

  final OpenAIUsage _self;
  final $Res Function(OpenAIUsage) _then;

/// Create a copy of OpenAIUsage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,Object? promptTokensDetails = freezed,Object? completionTokensDetails = freezed,}) {
  return _then(_self.copyWith(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,promptTokensDetails: freezed == promptTokensDetails ? _self.promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,completionTokensDetails: freezed == completionTokensDetails ? _self.completionTokensDetails : completionTokensDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenAIUsage].
extension OpenAIUsagePatterns on OpenAIUsage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAIUsage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAIUsage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAIUsage value)  $default,){
final _that = this;
switch (_that) {
case _OpenAIUsage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAIUsage value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAIUsage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int promptTokens,  int completionTokens,  int totalTokens,  Map<String, dynamic>? promptTokensDetails,  Map<String, dynamic>? completionTokensDetails)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAIUsage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens,_that.promptTokensDetails,_that.completionTokensDetails);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int promptTokens,  int completionTokens,  int totalTokens,  Map<String, dynamic>? promptTokensDetails,  Map<String, dynamic>? completionTokensDetails)  $default,) {final _that = this;
switch (_that) {
case _OpenAIUsage():
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens,_that.promptTokensDetails,_that.completionTokensDetails);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int promptTokens,  int completionTokens,  int totalTokens,  Map<String, dynamic>? promptTokensDetails,  Map<String, dynamic>? completionTokensDetails)?  $default,) {final _that = this;
switch (_that) {
case _OpenAIUsage() when $default != null:
return $default(_that.promptTokens,_that.completionTokens,_that.totalTokens,_that.promptTokensDetails,_that.completionTokensDetails);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OpenAIUsage implements OpenAIUsage {
  const _OpenAIUsage({required this.promptTokens, required this.completionTokens, required this.totalTokens, final  Map<String, dynamic>? promptTokensDetails, final  Map<String, dynamic>? completionTokensDetails}): _promptTokensDetails = promptTokensDetails,_completionTokensDetails = completionTokensDetails;
  factory _OpenAIUsage.fromJson(Map<String, dynamic> json) => _$OpenAIUsageFromJson(json);

@override final  int promptTokens;
@override final  int completionTokens;
@override final  int totalTokens;
 final  Map<String, dynamic>? _promptTokensDetails;
@override Map<String, dynamic>? get promptTokensDetails {
  final value = _promptTokensDetails;
  if (value == null) return null;
  if (_promptTokensDetails is EqualUnmodifiableMapView) return _promptTokensDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  Map<String, dynamic>? _completionTokensDetails;
@override Map<String, dynamic>? get completionTokensDetails {
  final value = _completionTokensDetails;
  if (value == null) return null;
  if (_completionTokensDetails is EqualUnmodifiableMapView) return _completionTokensDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of OpenAIUsage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAIUsageCopyWith<_OpenAIUsage> get copyWith => __$OpenAIUsageCopyWithImpl<_OpenAIUsage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenAIUsageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAIUsage&&(identical(other.promptTokens, promptTokens) || other.promptTokens == promptTokens)&&(identical(other.completionTokens, completionTokens) || other.completionTokens == completionTokens)&&(identical(other.totalTokens, totalTokens) || other.totalTokens == totalTokens)&&const DeepCollectionEquality().equals(other._promptTokensDetails, _promptTokensDetails)&&const DeepCollectionEquality().equals(other._completionTokensDetails, _completionTokensDetails));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,promptTokens,completionTokens,totalTokens,const DeepCollectionEquality().hash(_promptTokensDetails),const DeepCollectionEquality().hash(_completionTokensDetails));

@override
String toString() {
  return 'OpenAIUsage(promptTokens: $promptTokens, completionTokens: $completionTokens, totalTokens: $totalTokens, promptTokensDetails: $promptTokensDetails, completionTokensDetails: $completionTokensDetails)';
}


}

/// @nodoc
abstract mixin class _$OpenAIUsageCopyWith<$Res> implements $OpenAIUsageCopyWith<$Res> {
  factory _$OpenAIUsageCopyWith(_OpenAIUsage value, $Res Function(_OpenAIUsage) _then) = __$OpenAIUsageCopyWithImpl;
@override @useResult
$Res call({
 int promptTokens, int completionTokens, int totalTokens, Map<String, dynamic>? promptTokensDetails, Map<String, dynamic>? completionTokensDetails
});




}
/// @nodoc
class __$OpenAIUsageCopyWithImpl<$Res>
    implements _$OpenAIUsageCopyWith<$Res> {
  __$OpenAIUsageCopyWithImpl(this._self, this._then);

  final _OpenAIUsage _self;
  final $Res Function(_OpenAIUsage) _then;

/// Create a copy of OpenAIUsage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? promptTokens = null,Object? completionTokens = null,Object? totalTokens = null,Object? promptTokensDetails = freezed,Object? completionTokensDetails = freezed,}) {
  return _then(_OpenAIUsage(
promptTokens: null == promptTokens ? _self.promptTokens : promptTokens // ignore: cast_nullable_to_non_nullable
as int,completionTokens: null == completionTokens ? _self.completionTokens : completionTokens // ignore: cast_nullable_to_non_nullable
as int,totalTokens: null == totalTokens ? _self.totalTokens : totalTokens // ignore: cast_nullable_to_non_nullable
as int,promptTokensDetails: freezed == promptTokensDetails ? _self._promptTokensDetails : promptTokensDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,completionTokensDetails: freezed == completionTokensDetails ? _self._completionTokensDetails : completionTokensDetails // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
