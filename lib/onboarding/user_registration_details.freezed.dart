// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRegistrationDetails {

@JsonKey(name: "userId") String get userID;@JsonKey(name: "name") String get name;@JsonKey(name: "emailId") String get emailID;
/// Create a copy of UserRegistrationDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserRegistrationDetailsCopyWith<UserRegistrationDetails> get copyWith => _$UserRegistrationDetailsCopyWithImpl<UserRegistrationDetails>(this as UserRegistrationDetails, _$identity);

  /// Serializes this UserRegistrationDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserRegistrationDetails&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.name, name) || other.name == name)&&(identical(other.emailID, emailID) || other.emailID == emailID));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userID,name,emailID);

@override
String toString() {
  return 'UserRegistrationDetails(userID: $userID, name: $name, emailID: $emailID)';
}


}

/// @nodoc
abstract mixin class $UserRegistrationDetailsCopyWith<$Res>  {
  factory $UserRegistrationDetailsCopyWith(UserRegistrationDetails value, $Res Function(UserRegistrationDetails) _then) = _$UserRegistrationDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "userId") String userID,@JsonKey(name: "name") String name,@JsonKey(name: "emailId") String emailID
});




}
/// @nodoc
class _$UserRegistrationDetailsCopyWithImpl<$Res>
    implements $UserRegistrationDetailsCopyWith<$Res> {
  _$UserRegistrationDetailsCopyWithImpl(this._self, this._then);

  final UserRegistrationDetails _self;
  final $Res Function(UserRegistrationDetails) _then;

/// Create a copy of UserRegistrationDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userID = null,Object? name = null,Object? emailID = null,}) {
  return _then(_self.copyWith(
userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,emailID: null == emailID ? _self.emailID : emailID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserRegistrationDetails].
extension UserRegistrationDetailsPatterns on UserRegistrationDetails {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserRegistrationDetails value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserRegistrationDetails() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserRegistrationDetails value)  $default,){
final _that = this;
switch (_that) {
case _UserRegistrationDetails():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserRegistrationDetails value)?  $default,){
final _that = this;
switch (_that) {
case _UserRegistrationDetails() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "userId")  String userID, @JsonKey(name: "name")  String name, @JsonKey(name: "emailId")  String emailID)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserRegistrationDetails() when $default != null:
return $default(_that.userID,_that.name,_that.emailID);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "userId")  String userID, @JsonKey(name: "name")  String name, @JsonKey(name: "emailId")  String emailID)  $default,) {final _that = this;
switch (_that) {
case _UserRegistrationDetails():
return $default(_that.userID,_that.name,_that.emailID);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "userId")  String userID, @JsonKey(name: "name")  String name, @JsonKey(name: "emailId")  String emailID)?  $default,) {final _that = this;
switch (_that) {
case _UserRegistrationDetails() when $default != null:
return $default(_that.userID,_that.name,_that.emailID);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _UserRegistrationDetails implements UserRegistrationDetails {
  const _UserRegistrationDetails({@JsonKey(name: "userId") required this.userID, @JsonKey(name: "name") required this.name, @JsonKey(name: "emailId") required this.emailID});
  factory _UserRegistrationDetails.fromJson(Map<String, dynamic> json) => _$UserRegistrationDetailsFromJson(json);

@override@JsonKey(name: "userId") final  String userID;
@override@JsonKey(name: "name") final  String name;
@override@JsonKey(name: "emailId") final  String emailID;

/// Create a copy of UserRegistrationDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserRegistrationDetailsCopyWith<_UserRegistrationDetails> get copyWith => __$UserRegistrationDetailsCopyWithImpl<_UserRegistrationDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserRegistrationDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserRegistrationDetails&&(identical(other.userID, userID) || other.userID == userID)&&(identical(other.name, name) || other.name == name)&&(identical(other.emailID, emailID) || other.emailID == emailID));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userID,name,emailID);

@override
String toString() {
  return 'UserRegistrationDetails(userID: $userID, name: $name, emailID: $emailID)';
}


}

/// @nodoc
abstract mixin class _$UserRegistrationDetailsCopyWith<$Res> implements $UserRegistrationDetailsCopyWith<$Res> {
  factory _$UserRegistrationDetailsCopyWith(_UserRegistrationDetails value, $Res Function(_UserRegistrationDetails) _then) = __$UserRegistrationDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "userId") String userID,@JsonKey(name: "name") String name,@JsonKey(name: "emailId") String emailID
});




}
/// @nodoc
class __$UserRegistrationDetailsCopyWithImpl<$Res>
    implements _$UserRegistrationDetailsCopyWith<$Res> {
  __$UserRegistrationDetailsCopyWithImpl(this._self, this._then);

  final _UserRegistrationDetails _self;
  final $Res Function(_UserRegistrationDetails) _then;

/// Create a copy of UserRegistrationDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userID = null,Object? name = null,Object? emailID = null,}) {
  return _then(_UserRegistrationDetails(
userID: null == userID ? _self.userID : userID // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,emailID: null == emailID ? _self.emailID : emailID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
