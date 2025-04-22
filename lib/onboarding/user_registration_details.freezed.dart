// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRegistrationDetails _$UserRegistrationDetailsFromJson(
    Map<String, dynamic> json) {
  return _UserRegistrationDetails.fromJson(json);
}

/// @nodoc
mixin _$UserRegistrationDetails {
  @JsonKey(name: "userId")
  String get userID => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "emailId")
  String get emailID => throw _privateConstructorUsedError;

  /// Serializes this UserRegistrationDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRegistrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRegistrationDetailsCopyWith<UserRegistrationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationDetailsCopyWith<$Res> {
  factory $UserRegistrationDetailsCopyWith(UserRegistrationDetails value,
          $Res Function(UserRegistrationDetails) then) =
      _$UserRegistrationDetailsCopyWithImpl<$Res, UserRegistrationDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String userID,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "emailId") String emailID});
}

/// @nodoc
class _$UserRegistrationDetailsCopyWithImpl<$Res,
        $Val extends UserRegistrationDetails>
    implements $UserRegistrationDetailsCopyWith<$Res> {
  _$UserRegistrationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRegistrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
    Object? emailID = null,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailID: null == emailID
          ? _value.emailID
          : emailID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegistrationDetailsImplCopyWith<$Res>
    implements $UserRegistrationDetailsCopyWith<$Res> {
  factory _$$UserRegistrationDetailsImplCopyWith(
          _$UserRegistrationDetailsImpl value,
          $Res Function(_$UserRegistrationDetailsImpl) then) =
      __$$UserRegistrationDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "userId") String userID,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "emailId") String emailID});
}

/// @nodoc
class __$$UserRegistrationDetailsImplCopyWithImpl<$Res>
    extends _$UserRegistrationDetailsCopyWithImpl<$Res,
        _$UserRegistrationDetailsImpl>
    implements _$$UserRegistrationDetailsImplCopyWith<$Res> {
  __$$UserRegistrationDetailsImplCopyWithImpl(
      _$UserRegistrationDetailsImpl _value,
      $Res Function(_$UserRegistrationDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRegistrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
    Object? emailID = null,
  }) {
    return _then(_$UserRegistrationDetailsImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      emailID: null == emailID
          ? _value.emailID
          : emailID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserRegistrationDetailsImpl implements _UserRegistrationDetails {
  const _$UserRegistrationDetailsImpl(
      {@JsonKey(name: "userId") required this.userID,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "emailId") required this.emailID});

  factory _$UserRegistrationDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRegistrationDetailsImplFromJson(json);

  @override
  @JsonKey(name: "userId")
  final String userID;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "emailId")
  final String emailID;

  @override
  String toString() {
    return 'UserRegistrationDetails(userID: $userID, name: $name, emailID: $emailID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegistrationDetailsImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.emailID, emailID) || other.emailID == emailID));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userID, name, emailID);

  /// Create a copy of UserRegistrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegistrationDetailsImplCopyWith<_$UserRegistrationDetailsImpl>
      get copyWith => __$$UserRegistrationDetailsImplCopyWithImpl<
          _$UserRegistrationDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRegistrationDetailsImplToJson(
      this,
    );
  }
}

abstract class _UserRegistrationDetails implements UserRegistrationDetails {
  const factory _UserRegistrationDetails(
          {@JsonKey(name: "userId") required final String userID,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "emailId") required final String emailID}) =
      _$UserRegistrationDetailsImpl;

  factory _UserRegistrationDetails.fromJson(Map<String, dynamic> json) =
      _$UserRegistrationDetailsImpl.fromJson;

  @override
  @JsonKey(name: "userId")
  String get userID;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "emailId")
  String get emailID;

  /// Create a copy of UserRegistrationDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRegistrationDetailsImplCopyWith<_$UserRegistrationDetailsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
