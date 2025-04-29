// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lap_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LapInfoModel _$LapInfoModelFromJson(Map<String, dynamic> json) {
  return _LapInfoModel.fromJson(json);
}

/// @nodoc
mixin _$LapInfoModel {
  @JsonKey(name: "lapNumber")
  int get lapNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "hours")
  int get hours => throw _privateConstructorUsedError;
  @JsonKey(name: "minutes")
  int get minutes => throw _privateConstructorUsedError;
  @JsonKey(name: "seconds")
  int get seconds => throw _privateConstructorUsedError;
  @JsonKey(name: "lapDateTime")
  String get lapDateTime => throw _privateConstructorUsedError;

  /// Serializes this LapInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LapInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LapInfoModelCopyWith<LapInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LapInfoModelCopyWith<$Res> {
  factory $LapInfoModelCopyWith(
          LapInfoModel value, $Res Function(LapInfoModel) then) =
      _$LapInfoModelCopyWithImpl<$Res, LapInfoModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "lapNumber") int lapNumber,
      @JsonKey(name: "hours") int hours,
      @JsonKey(name: "minutes") int minutes,
      @JsonKey(name: "seconds") int seconds,
      @JsonKey(name: "lapDateTime") String lapDateTime});
}

/// @nodoc
class _$LapInfoModelCopyWithImpl<$Res, $Val extends LapInfoModel>
    implements $LapInfoModelCopyWith<$Res> {
  _$LapInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LapInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lapNumber = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? lapDateTime = null,
  }) {
    return _then(_value.copyWith(
      lapNumber: null == lapNumber
          ? _value.lapNumber
          : lapNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      lapDateTime: null == lapDateTime
          ? _value.lapDateTime
          : lapDateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LapInfoModelImplCopyWith<$Res>
    implements $LapInfoModelCopyWith<$Res> {
  factory _$$LapInfoModelImplCopyWith(
          _$LapInfoModelImpl value, $Res Function(_$LapInfoModelImpl) then) =
      __$$LapInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "lapNumber") int lapNumber,
      @JsonKey(name: "hours") int hours,
      @JsonKey(name: "minutes") int minutes,
      @JsonKey(name: "seconds") int seconds,
      @JsonKey(name: "lapDateTime") String lapDateTime});
}

/// @nodoc
class __$$LapInfoModelImplCopyWithImpl<$Res>
    extends _$LapInfoModelCopyWithImpl<$Res, _$LapInfoModelImpl>
    implements _$$LapInfoModelImplCopyWith<$Res> {
  __$$LapInfoModelImplCopyWithImpl(
      _$LapInfoModelImpl _value, $Res Function(_$LapInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LapInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lapNumber = null,
    Object? hours = null,
    Object? minutes = null,
    Object? seconds = null,
    Object? lapDateTime = null,
  }) {
    return _then(_$LapInfoModelImpl(
      lapNumber: null == lapNumber
          ? _value.lapNumber
          : lapNumber // ignore: cast_nullable_to_non_nullable
              as int,
      hours: null == hours
          ? _value.hours
          : hours // ignore: cast_nullable_to_non_nullable
              as int,
      minutes: null == minutes
          ? _value.minutes
          : minutes // ignore: cast_nullable_to_non_nullable
              as int,
      seconds: null == seconds
          ? _value.seconds
          : seconds // ignore: cast_nullable_to_non_nullable
              as int,
      lapDateTime: null == lapDateTime
          ? _value.lapDateTime
          : lapDateTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LapInfoModelImpl implements _LapInfoModel {
  const _$LapInfoModelImpl(
      {@JsonKey(name: "lapNumber") required this.lapNumber,
      @JsonKey(name: "hours") required this.hours,
      @JsonKey(name: "minutes") required this.minutes,
      @JsonKey(name: "seconds") required this.seconds,
      @JsonKey(name: "lapDateTime") required this.lapDateTime});

  factory _$LapInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LapInfoModelImplFromJson(json);

  @override
  @JsonKey(name: "lapNumber")
  final int lapNumber;
  @override
  @JsonKey(name: "hours")
  final int hours;
  @override
  @JsonKey(name: "minutes")
  final int minutes;
  @override
  @JsonKey(name: "seconds")
  final int seconds;
  @override
  @JsonKey(name: "lapDateTime")
  final String lapDateTime;

  @override
  String toString() {
    return 'LapInfoModel(lapNumber: $lapNumber, hours: $hours, minutes: $minutes, seconds: $seconds, lapDateTime: $lapDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LapInfoModelImpl &&
            (identical(other.lapNumber, lapNumber) ||
                other.lapNumber == lapNumber) &&
            (identical(other.hours, hours) || other.hours == hours) &&
            (identical(other.minutes, minutes) || other.minutes == minutes) &&
            (identical(other.seconds, seconds) || other.seconds == seconds) &&
            (identical(other.lapDateTime, lapDateTime) ||
                other.lapDateTime == lapDateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, lapNumber, hours, minutes, seconds, lapDateTime);

  /// Create a copy of LapInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LapInfoModelImplCopyWith<_$LapInfoModelImpl> get copyWith =>
      __$$LapInfoModelImplCopyWithImpl<_$LapInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LapInfoModelImplToJson(
      this,
    );
  }
}

abstract class _LapInfoModel implements LapInfoModel {
  const factory _LapInfoModel(
          {@JsonKey(name: "lapNumber") required final int lapNumber,
          @JsonKey(name: "hours") required final int hours,
          @JsonKey(name: "minutes") required final int minutes,
          @JsonKey(name: "seconds") required final int seconds,
          @JsonKey(name: "lapDateTime") required final String lapDateTime}) =
      _$LapInfoModelImpl;

  factory _LapInfoModel.fromJson(Map<String, dynamic> json) =
      _$LapInfoModelImpl.fromJson;

  @override
  @JsonKey(name: "lapNumber")
  int get lapNumber;
  @override
  @JsonKey(name: "hours")
  int get hours;
  @override
  @JsonKey(name: "minutes")
  int get minutes;
  @override
  @JsonKey(name: "seconds")
  int get seconds;
  @override
  @JsonKey(name: "lapDateTime")
  String get lapDateTime;

  /// Create a copy of LapInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LapInfoModelImplCopyWith<_$LapInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
