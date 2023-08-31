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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimerScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult? Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult? Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult? Function(TimerResetEvent value)? TimerResetEvent,
    TResult? Function(TimerTickedEvent value)? TimerTickedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TimerStartedEvent value)? TimerStartedEvent,
    TResult Function(TimerPausedEvent value)? TimerPausedEvent,
    TResult Function(TimerResumedEvent value)? TimerResumedEvent,
    TResult Function(TimerResetEvent value)? TimerResetEvent,
    TResult Function(TimerTickedEvent value)? TimerTickedEvent,
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
abstract class _$$TimerStartedEventCopyWith<$Res> {
  factory _$$TimerStartedEventCopyWith(
          _$TimerStartedEvent value, $Res Function(_$TimerStartedEvent) then) =
      __$$TimerStartedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int duration});
}

/// @nodoc
class __$$TimerStartedEventCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerStartedEvent>
    implements _$$TimerStartedEventCopyWith<$Res> {
  __$$TimerStartedEventCopyWithImpl(
      _$TimerStartedEvent _value, $Res Function(_$TimerStartedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
  }) {
    return _then(_$TimerStartedEvent(
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TimerStartedEvent implements TimerStartedEvent {
  const _$TimerStartedEvent(this.duration);

  @override
  final int duration;

  @override
  String toString() {
    return 'TimerScreenEvent.TimerStartedEvent(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerStartedEvent &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerStartedEventCopyWith<_$TimerStartedEvent> get copyWith =>
      __$$TimerStartedEventCopyWithImpl<_$TimerStartedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
  }) {
    return TimerStartedEvent(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
  }) {
    return TimerStartedEvent?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
    required TResult orElse(),
  }) {
    if (TimerStartedEvent != null) {
      return TimerStartedEvent(duration);
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
    required TResult orElse(),
  }) {
    if (TimerStartedEvent != null) {
      return TimerStartedEvent(this);
    }
    return orElse();
  }
}

abstract class TimerStartedEvent implements TimerScreenEvent {
  const factory TimerStartedEvent(final int duration) = _$TimerStartedEvent;

  int get duration;
  @JsonKey(ignore: true)
  _$$TimerStartedEventCopyWith<_$TimerStartedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerPausedEventCopyWith<$Res> {
  factory _$$TimerPausedEventCopyWith(
          _$TimerPausedEvent value, $Res Function(_$TimerPausedEvent) then) =
      __$$TimerPausedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerPausedEventCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerPausedEvent>
    implements _$$TimerPausedEventCopyWith<$Res> {
  __$$TimerPausedEventCopyWithImpl(
      _$TimerPausedEvent _value, $Res Function(_$TimerPausedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerPausedEvent implements TimerPausedEvent {
  const _$TimerPausedEvent();

  @override
  String toString() {
    return 'TimerScreenEvent.TimerPausedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerPausedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
  }) {
    return TimerPausedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
  }) {
    return TimerPausedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
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
    required TResult orElse(),
  }) {
    if (TimerPausedEvent != null) {
      return TimerPausedEvent(this);
    }
    return orElse();
  }
}

abstract class TimerPausedEvent implements TimerScreenEvent {
  const factory TimerPausedEvent() = _$TimerPausedEvent;
}

/// @nodoc
abstract class _$$TimerResumedEventCopyWith<$Res> {
  factory _$$TimerResumedEventCopyWith(
          _$TimerResumedEvent value, $Res Function(_$TimerResumedEvent) then) =
      __$$TimerResumedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResumedEventCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerResumedEvent>
    implements _$$TimerResumedEventCopyWith<$Res> {
  __$$TimerResumedEventCopyWithImpl(
      _$TimerResumedEvent _value, $Res Function(_$TimerResumedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResumedEvent implements TimerResumedEvent {
  const _$TimerResumedEvent();

  @override
  String toString() {
    return 'TimerScreenEvent.TimerResumedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResumedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
  }) {
    return TimerResumedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
  }) {
    return TimerResumedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
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
    required TResult orElse(),
  }) {
    if (TimerResumedEvent != null) {
      return TimerResumedEvent(this);
    }
    return orElse();
  }
}

abstract class TimerResumedEvent implements TimerScreenEvent {
  const factory TimerResumedEvent() = _$TimerResumedEvent;
}

/// @nodoc
abstract class _$$TimerResetEventCopyWith<$Res> {
  factory _$$TimerResetEventCopyWith(
          _$TimerResetEvent value, $Res Function(_$TimerResetEvent) then) =
      __$$TimerResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerResetEventCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerResetEvent>
    implements _$$TimerResetEventCopyWith<$Res> {
  __$$TimerResetEventCopyWithImpl(
      _$TimerResetEvent _value, $Res Function(_$TimerResetEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimerResetEvent implements TimerResetEvent {
  const _$TimerResetEvent();

  @override
  String toString() {
    return 'TimerScreenEvent.TimerResetEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerResetEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
  }) {
    return TimerResetEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
  }) {
    return TimerResetEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
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
    required TResult orElse(),
  }) {
    if (TimerResetEvent != null) {
      return TimerResetEvent(this);
    }
    return orElse();
  }
}

abstract class TimerResetEvent implements TimerScreenEvent {
  const factory TimerResetEvent() = _$TimerResetEvent;
}

/// @nodoc
abstract class _$$TimerTickedEventCopyWith<$Res> {
  factory _$$TimerTickedEventCopyWith(
          _$TimerTickedEvent value, $Res Function(_$TimerTickedEvent) then) =
      __$$TimerTickedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({DurationModel durationModel});
}

/// @nodoc
class __$$TimerTickedEventCopyWithImpl<$Res>
    extends _$TimerScreenEventCopyWithImpl<$Res, _$TimerTickedEvent>
    implements _$$TimerTickedEventCopyWith<$Res> {
  __$$TimerTickedEventCopyWithImpl(
      _$TimerTickedEvent _value, $Res Function(_$TimerTickedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durationModel = null,
  }) {
    return _then(_$TimerTickedEvent(
      null == durationModel
          ? _value.durationModel
          : durationModel // ignore: cast_nullable_to_non_nullable
              as DurationModel,
    ));
  }
}

/// @nodoc

class _$TimerTickedEvent implements TimerTickedEvent {
  const _$TimerTickedEvent(this.durationModel);

  @override
  final DurationModel durationModel;

  @override
  String toString() {
    return 'TimerScreenEvent.TimerTickedEvent(durationModel: $durationModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerTickedEvent &&
            (identical(other.durationModel, durationModel) ||
                other.durationModel == durationModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerTickedEventCopyWith<_$TimerTickedEvent> get copyWith =>
      __$$TimerTickedEventCopyWithImpl<_$TimerTickedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int duration) TimerStartedEvent,
    required TResult Function() TimerPausedEvent,
    required TResult Function() TimerResumedEvent,
    required TResult Function() TimerResetEvent,
    required TResult Function(DurationModel durationModel) TimerTickedEvent,
  }) {
    return TimerTickedEvent(durationModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int duration)? TimerStartedEvent,
    TResult? Function()? TimerPausedEvent,
    TResult? Function()? TimerResumedEvent,
    TResult? Function()? TimerResetEvent,
    TResult? Function(DurationModel durationModel)? TimerTickedEvent,
  }) {
    return TimerTickedEvent?.call(durationModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int duration)? TimerStartedEvent,
    TResult Function()? TimerPausedEvent,
    TResult Function()? TimerResumedEvent,
    TResult Function()? TimerResetEvent,
    TResult Function(DurationModel durationModel)? TimerTickedEvent,
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
      _$TimerTickedEvent;

  DurationModel get durationModel;
  @JsonKey(ignore: true)
  _$$TimerTickedEventCopyWith<_$TimerTickedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
