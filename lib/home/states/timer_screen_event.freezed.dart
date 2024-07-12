// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimerScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DurationModel durationModel) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
    required TResult Function() AddLapEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DurationModel durationModel)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
    TResult? Function()? AddLapEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DurationModel durationModel)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    TResult Function()? AddLapEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartedEvent value) TimerStartedEvent,
    required TResult Function(TimerPausedEvent value) TimerPausedEvent,
    required TResult Function(TimerResumedEvent value) TimerResumedEvent,
    required TResult Function(TimerResetEvent value) TimerResetEvent,
    required TResult Function(TimerTickedEvent value) TimerTickedEvent,
    required TResult Function(AddLapEvent value) AddLapEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult? Function(AddLapEvent value)? AddLapEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult Function(AddLapEvent value)? AddLapEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerScreenEventCopyWith<$Res> {
  factory $TimerScreenEventCopyWith(
          TimerScreenEvent value, $Res Function(TimerScreenEvent) then) =
      _$TimerScreenEventCopyWithImpl<$Res, TimerScreenEvent>;
}

/// @nodoc
class _$TimerScreenEventCopyWithImpl<$Res, $Val extends TimerScreenEvent>
    implements $TimerScreenEventCopyWith<$Res> {
  _$TimerScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TimerStartedEventImplCopyWith<$Res> {
  factory _$$TimerStartedEventImplCopyWith(_$TimerStartedEventImpl value,
          $Res Function(_$TimerStartedEventImpl) then) =
      __$$TimerStartedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DurationModel durationModel});
}

/// @nodoc
class __$$TimerStartedEventImplCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerStartedEventImpl>
    implements _$$TimerStartedEventImplCopyWith<$Res> {
  __$$TimerStartedEventImplCopyWithImpl(_$TimerStartedEventImpl _value,
      $Res Function(_$TimerStartedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durationModel = null,
  }) {
    return _then(_$TimerStartedEventImpl(
      null == durationModel
          ? _value.durationModel
          : durationModel // ignore: cast_nullable_to_non_nullable
              as DurationModel,
    ));
  }
}

/// @nodoc

class _$TimerStartedEventImpl implements TimerStartedEvent {
  const _$TimerStartedEventImpl(this.durationModel);

  @override
  final DurationModel durationModel;

  @override
  String toString() {
    return 'TimerScreenEvent.TimerStartedEvent(durationModel: $durationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStartedEventImpl &&
            (identical(other.durationModel, durationModel) ||
                other.durationModel == durationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStartedEventImplCopyWith<_$TimerStartedEventImpl> get copyWith =>
      __$$TimerStartedEventImplCopyWithImpl<_$TimerStartedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DurationModel durationModel) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
    required TResult Function() AddLapEvent,
  }) {
    return TimerStartedEvent(durationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DurationModel durationModel)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
    TResult? Function()? AddLapEvent,
  }) {
    return TimerStartedEvent?.call(durationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DurationModel durationModel)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    TResult Function()? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerStartedEvent != null) {
      return TimerStartedEvent(durationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartedEvent value) TimerStartedEvent,
    required TResult Function(TimerPausedEvent value) TimerPausedEvent,
    required TResult Function(TimerResumedEvent value) TimerResumedEvent,
    required TResult Function(TimerResetEvent value) TimerResetEvent,
    required TResult Function(TimerTickedEvent value) TimerTickedEvent,
    required TResult Function(AddLapEvent value) AddLapEvent,
  }) {
    return TimerStartedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult? Function(AddLapEvent value)? AddLapEvent,
  }) {
    return TimerStartedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult Function(AddLapEvent value)? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerStartedEvent != null) {
      return TimerStartedEvent(this);
    }
    return orElse();
  }
}

abstract class TimerStartedEvent implements TimerScreenEvent {
  const factory TimerStartedEvent(final DurationModel durationModel) =
      _$TimerStartedEventImpl;

  DurationModel get durationModel;
  @JsonKey(ignore: true)
  _$$TimerStartedEventImplCopyWith<_$TimerStartedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerPausedEventImplCopyWith<$Res> {
  factory _$$TimerPausedEventImplCopyWith(_$TimerPausedEventImpl value,
          $Res Function(_$TimerPausedEventImpl) then) =
      __$$TimerPausedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerPausedEventImplCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerPausedEventImpl>
    implements _$$TimerPausedEventImplCopyWith<$Res> {
  __$$TimerPausedEventImplCopyWithImpl(_$TimerPausedEventImpl _value,
      $Res Function(_$TimerPausedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerPausedEventImpl implements TimerPausedEvent {
  const _$TimerPausedEventImpl();

  @override
  String toString() {
    return 'TimerScreenEvent.TimerPausedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPausedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DurationModel durationModel) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
    required TResult Function() AddLapEvent,
  }) {
    return TimerPausedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DurationModel durationModel)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
    TResult? Function()? AddLapEvent,
  }) {
    return TimerPausedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DurationModel durationModel)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    TResult Function()? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerPausedEvent != null) {
      return TimerPausedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartedEvent value) TimerStartedEvent,
    required TResult Function(TimerPausedEvent value) TimerPausedEvent,
    required TResult Function(TimerResumedEvent value) TimerResumedEvent,
    required TResult Function(TimerResetEvent value) TimerResetEvent,
    required TResult Function(TimerTickedEvent value) TimerTickedEvent,
    required TResult Function(AddLapEvent value) AddLapEvent,
  }) {
    return TimerPausedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult? Function(AddLapEvent value)? AddLapEvent,
  }) {
    return TimerPausedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult Function(AddLapEvent value)? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerPausedEvent != null) {
      return TimerPausedEvent(this);
    }
    return orElse();
  }
}

abstract class TimerPausedEvent implements TimerScreenEvent {
  const factory TimerPausedEvent() = _$TimerPausedEventImpl;
}

/// @nodoc
abstract class _$$TimerResumedEventImplCopyWith<$Res> {
  factory _$$TimerResumedEventImplCopyWith(_$TimerResumedEventImpl value,
          $Res Function(_$TimerResumedEventImpl) then) =
      __$$TimerResumedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResumedEventImplCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerResumedEventImpl>
    implements _$$TimerResumedEventImplCopyWith<$Res> {
  __$$TimerResumedEventImplCopyWithImpl(_$TimerResumedEventImpl _value,
      $Res Function(_$TimerResumedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResumedEventImpl implements TimerResumedEvent {
  const _$TimerResumedEventImpl();

  @override
  String toString() {
    return 'TimerScreenEvent.TimerResumedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResumedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DurationModel durationModel) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
    required TResult Function() AddLapEvent,
  }) {
    return TimerResumedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DurationModel durationModel)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
    TResult? Function()? AddLapEvent,
  }) {
    return TimerResumedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DurationModel durationModel)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    TResult Function()? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerResumedEvent != null) {
      return TimerResumedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartedEvent value) TimerStartedEvent,
    required TResult Function(TimerPausedEvent value) TimerPausedEvent,
    required TResult Function(TimerResumedEvent value) TimerResumedEvent,
    required TResult Function(TimerResetEvent value) TimerResetEvent,
    required TResult Function(TimerTickedEvent value) TimerTickedEvent,
    required TResult Function(AddLapEvent value) AddLapEvent,
  }) {
    return TimerResumedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult? Function(AddLapEvent value)? AddLapEvent,
  }) {
    return TimerResumedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult Function(AddLapEvent value)? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerResumedEvent != null) {
      return TimerResumedEvent(this);
    }
    return orElse();
  }
}

abstract class TimerResumedEvent implements TimerScreenEvent {
  const factory TimerResumedEvent() = _$TimerResumedEventImpl;
}

/// @nodoc
abstract class _$$TimerResetEventImplCopyWith<$Res> {
  factory _$$TimerResetEventImplCopyWith(_$TimerResetEventImpl value,
          $Res Function(_$TimerResetEventImpl) then) =
      __$$TimerResetEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResetEventImplCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerResetEventImpl>
    implements _$$TimerResetEventImplCopyWith<$Res> {
  __$$TimerResetEventImplCopyWithImpl(
      _$TimerResetEventImpl _value, $Res Function(_$TimerResetEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResetEventImpl implements TimerResetEvent {
  const _$TimerResetEventImpl();

  @override
  String toString() {
    return 'TimerScreenEvent.TimerResetEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResetEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DurationModel durationModel) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
    required TResult Function() AddLapEvent,
  }) {
    return TimerResetEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DurationModel durationModel)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
    TResult? Function()? AddLapEvent,
  }) {
    return TimerResetEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DurationModel durationModel)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    TResult Function()? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerResetEvent != null) {
      return TimerResetEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartedEvent value) TimerStartedEvent,
    required TResult Function(TimerPausedEvent value) TimerPausedEvent,
    required TResult Function(TimerResumedEvent value) TimerResumedEvent,
    required TResult Function(TimerResetEvent value) TimerResetEvent,
    required TResult Function(TimerTickedEvent value) TimerTickedEvent,
    required TResult Function(AddLapEvent value) AddLapEvent,
  }) {
    return TimerResetEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult? Function(AddLapEvent value)? AddLapEvent,
  }) {
    return TimerResetEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult Function(AddLapEvent value)? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerResetEvent != null) {
      return TimerResetEvent(this);
    }
    return orElse();
  }
}

abstract class TimerResetEvent implements TimerScreenEvent {
  const factory TimerResetEvent() = _$TimerResetEventImpl;
}

/// @nodoc
abstract class _$$TimerTickedEventImplCopyWith<$Res> {
  factory _$$TimerTickedEventImplCopyWith(_$TimerTickedEventImpl value,
          $Res Function(_$TimerTickedEventImpl) then) =
      __$$TimerTickedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DurationModel durationModel});
}

/// @nodoc
class __$$TimerTickedEventImplCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerTickedEventImpl>
    implements _$$TimerTickedEventImplCopyWith<$Res> {
  __$$TimerTickedEventImplCopyWithImpl(_$TimerTickedEventImpl _value,
      $Res Function(_$TimerTickedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durationModel = null,
  }) {
    return _then(_$TimerTickedEventImpl(
      null == durationModel
          ? _value.durationModel
          : durationModel // ignore: cast_nullable_to_non_nullable
              as DurationModel,
    ));
  }
}

/// @nodoc

class _$TimerTickedEventImpl implements TimerTickedEvent {
  const _$TimerTickedEventImpl(this.durationModel);

  @override
  final DurationModel durationModel;

  @override
  String toString() {
    return 'TimerScreenEvent.TimerTickedEvent(durationModel: $durationModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTickedEventImpl &&
            (identical(other.durationModel, durationModel) ||
                other.durationModel == durationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerTickedEventImplCopyWith<_$TimerTickedEventImpl> get copyWith =>
      __$$TimerTickedEventImplCopyWithImpl<_$TimerTickedEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DurationModel durationModel) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
    required TResult Function() AddLapEvent,
  }) {
    return TimerTickedEvent(durationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DurationModel durationModel)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
    TResult? Function()? AddLapEvent,
  }) {
    return TimerTickedEvent?.call(durationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DurationModel durationModel)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    TResult Function()? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerTickedEvent != null) {
      return TimerTickedEvent(durationModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartedEvent value) TimerStartedEvent,
    required TResult Function(TimerPausedEvent value) TimerPausedEvent,
    required TResult Function(TimerResumedEvent value) TimerResumedEvent,
    required TResult Function(TimerResetEvent value) TimerResetEvent,
    required TResult Function(TimerTickedEvent value) TimerTickedEvent,
    required TResult Function(AddLapEvent value) AddLapEvent,
  }) {
    return TimerTickedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult? Function(AddLapEvent value)? AddLapEvent,
  }) {
    return TimerTickedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult Function(AddLapEvent value)? AddLapEvent,
    required TResult orElse(),
  }) {
    if (TimerTickedEvent != null) {
      return TimerTickedEvent(this);
    }
    return orElse();
  }
}

abstract class TimerTickedEvent implements TimerScreenEvent {
  const factory TimerTickedEvent(final DurationModel durationModel) =
      _$TimerTickedEventImpl;

  DurationModel get durationModel;
  @JsonKey(ignore: true)
  _$$TimerTickedEventImplCopyWith<_$TimerTickedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLapEventImplCopyWith<$Res> {
  factory _$$AddLapEventImplCopyWith(
          _$AddLapEventImpl value, $Res Function(_$AddLapEventImpl) then) =
      __$$AddLapEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddLapEventImplCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$AddLapEventImpl>
    implements _$$AddLapEventImplCopyWith<$Res> {
  __$$AddLapEventImplCopyWithImpl(
      _$AddLapEventImpl _value, $Res Function(_$AddLapEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddLapEventImpl implements AddLapEvent {
  const _$AddLapEventImpl();

  @override
  String toString() {
    return 'TimerScreenEvent.AddLapEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddLapEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DurationModel durationModel) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
    required TResult Function() AddLapEvent,
  }) {
    return AddLapEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DurationModel durationModel)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
    TResult? Function()? AddLapEvent,
  }) {
    return AddLapEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DurationModel durationModel)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    TResult Function()? AddLapEvent,
    required TResult orElse(),
  }) {
    if (AddLapEvent != null) {
      return AddLapEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TimerStartedEvent value) TimerStartedEvent,
    required TResult Function(TimerPausedEvent value) TimerPausedEvent,
    required TResult Function(TimerResumedEvent value) TimerResumedEvent,
    required TResult Function(TimerResetEvent value) TimerResetEvent,
    required TResult Function(TimerTickedEvent value) TimerTickedEvent,
    required TResult Function(AddLapEvent value) AddLapEvent,
  }) {
    return AddLapEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult? Function(AddLapEvent value)? AddLapEvent,
  }) {
    return AddLapEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
    TResult Function(AddLapEvent value)? AddLapEvent,
    required TResult orElse(),
  }) {
    if (AddLapEvent != null) {
      return AddLapEvent(this);
    }
    return orElse();
  }
}

abstract class AddLapEvent implements TimerScreenEvent {
  const factory AddLapEvent() = _$AddLapEventImpl;
}
