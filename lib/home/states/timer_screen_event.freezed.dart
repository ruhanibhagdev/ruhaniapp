// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimerScreenEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerScreenEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenEvent()';
}


}

/// @nodoc
class $TimerScreenEventCopyWith<$Res>  {
$TimerScreenEventCopyWith(TimerScreenEvent _, $Res Function(TimerScreenEvent) __);
}


/// Adds pattern-matching-related methods to [TimerScreenEvent].
extension TimerScreenEventPatterns on TimerScreenEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TimerStartedEvent value)?  TimerStarted,TResult Function( TimerPausedEvent value)?  TimerPaused,TResult Function( TimerResumedEvent value)?  TimerResumed,TResult Function( TimerResetEvent value)?  TimerReset,TResult Function( TimerTickedEvent value)?  TimerTicked,TResult Function( AddLapEvent value)?  AddLap,TResult Function( AppLogoutEvent value)?  AppLogout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TimerStartedEvent() when TimerStarted != null:
return TimerStarted(_that);case TimerPausedEvent() when TimerPaused != null:
return TimerPaused(_that);case TimerResumedEvent() when TimerResumed != null:
return TimerResumed(_that);case TimerResetEvent() when TimerReset != null:
return TimerReset(_that);case TimerTickedEvent() when TimerTicked != null:
return TimerTicked(_that);case AddLapEvent() when AddLap != null:
return AddLap(_that);case AppLogoutEvent() when AppLogout != null:
return AppLogout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TimerStartedEvent value)  TimerStarted,required TResult Function( TimerPausedEvent value)  TimerPaused,required TResult Function( TimerResumedEvent value)  TimerResumed,required TResult Function( TimerResetEvent value)  TimerReset,required TResult Function( TimerTickedEvent value)  TimerTicked,required TResult Function( AddLapEvent value)  AddLap,required TResult Function( AppLogoutEvent value)  AppLogout,}){
final _that = this;
switch (_that) {
case TimerStartedEvent():
return TimerStarted(_that);case TimerPausedEvent():
return TimerPaused(_that);case TimerResumedEvent():
return TimerResumed(_that);case TimerResetEvent():
return TimerReset(_that);case TimerTickedEvent():
return TimerTicked(_that);case AddLapEvent():
return AddLap(_that);case AppLogoutEvent():
return AppLogout(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TimerStartedEvent value)?  TimerStarted,TResult? Function( TimerPausedEvent value)?  TimerPaused,TResult? Function( TimerResumedEvent value)?  TimerResumed,TResult? Function( TimerResetEvent value)?  TimerReset,TResult? Function( TimerTickedEvent value)?  TimerTicked,TResult? Function( AddLapEvent value)?  AddLap,TResult? Function( AppLogoutEvent value)?  AppLogout,}){
final _that = this;
switch (_that) {
case TimerStartedEvent() when TimerStarted != null:
return TimerStarted(_that);case TimerPausedEvent() when TimerPaused != null:
return TimerPaused(_that);case TimerResumedEvent() when TimerResumed != null:
return TimerResumed(_that);case TimerResetEvent() when TimerReset != null:
return TimerReset(_that);case TimerTickedEvent() when TimerTicked != null:
return TimerTicked(_that);case AddLapEvent() when AddLap != null:
return AddLap(_that);case AppLogoutEvent() when AppLogout != null:
return AppLogout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( DurationModel durationModel)?  TimerStarted,TResult Function()?  TimerPaused,TResult Function()?  TimerResumed,TResult Function()?  TimerReset,TResult Function( DurationModel durationModel)?  TimerTicked,TResult Function()?  AddLap,TResult Function()?  AppLogout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TimerStartedEvent() when TimerStarted != null:
return TimerStarted(_that.durationModel);case TimerPausedEvent() when TimerPaused != null:
return TimerPaused();case TimerResumedEvent() when TimerResumed != null:
return TimerResumed();case TimerResetEvent() when TimerReset != null:
return TimerReset();case TimerTickedEvent() when TimerTicked != null:
return TimerTicked(_that.durationModel);case AddLapEvent() when AddLap != null:
return AddLap();case AppLogoutEvent() when AppLogout != null:
return AppLogout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( DurationModel durationModel)  TimerStarted,required TResult Function()  TimerPaused,required TResult Function()  TimerResumed,required TResult Function()  TimerReset,required TResult Function( DurationModel durationModel)  TimerTicked,required TResult Function()  AddLap,required TResult Function()  AppLogout,}) {final _that = this;
switch (_that) {
case TimerStartedEvent():
return TimerStarted(_that.durationModel);case TimerPausedEvent():
return TimerPaused();case TimerResumedEvent():
return TimerResumed();case TimerResetEvent():
return TimerReset();case TimerTickedEvent():
return TimerTicked(_that.durationModel);case AddLapEvent():
return AddLap();case AppLogoutEvent():
return AppLogout();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( DurationModel durationModel)?  TimerStarted,TResult? Function()?  TimerPaused,TResult? Function()?  TimerResumed,TResult? Function()?  TimerReset,TResult? Function( DurationModel durationModel)?  TimerTicked,TResult? Function()?  AddLap,TResult? Function()?  AppLogout,}) {final _that = this;
switch (_that) {
case TimerStartedEvent() when TimerStarted != null:
return TimerStarted(_that.durationModel);case TimerPausedEvent() when TimerPaused != null:
return TimerPaused();case TimerResumedEvent() when TimerResumed != null:
return TimerResumed();case TimerResetEvent() when TimerReset != null:
return TimerReset();case TimerTickedEvent() when TimerTicked != null:
return TimerTicked(_that.durationModel);case AddLapEvent() when AddLap != null:
return AddLap();case AppLogoutEvent() when AppLogout != null:
return AppLogout();case _:
  return null;

}
}

}

/// @nodoc


class TimerStartedEvent implements TimerScreenEvent {
  const TimerStartedEvent(this.durationModel);
  

 final  DurationModel durationModel;

/// Create a copy of TimerScreenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerStartedEventCopyWith<TimerStartedEvent> get copyWith => _$TimerStartedEventCopyWithImpl<TimerStartedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerStartedEvent&&(identical(other.durationModel, durationModel) || other.durationModel == durationModel));
}


@override
int get hashCode => Object.hash(runtimeType,durationModel);

@override
String toString() {
  return 'TimerScreenEvent.TimerStarted(durationModel: $durationModel)';
}


}

/// @nodoc
abstract mixin class $TimerStartedEventCopyWith<$Res> implements $TimerScreenEventCopyWith<$Res> {
  factory $TimerStartedEventCopyWith(TimerStartedEvent value, $Res Function(TimerStartedEvent) _then) = _$TimerStartedEventCopyWithImpl;
@useResult
$Res call({
 DurationModel durationModel
});




}
/// @nodoc
class _$TimerStartedEventCopyWithImpl<$Res>
    implements $TimerStartedEventCopyWith<$Res> {
  _$TimerStartedEventCopyWithImpl(this._self, this._then);

  final TimerStartedEvent _self;
  final $Res Function(TimerStartedEvent) _then;

/// Create a copy of TimerScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? durationModel = null,}) {
  return _then(TimerStartedEvent(
null == durationModel ? _self.durationModel : durationModel // ignore: cast_nullable_to_non_nullable
as DurationModel,
  ));
}


}

/// @nodoc


class TimerPausedEvent implements TimerScreenEvent {
  const TimerPausedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerPausedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenEvent.TimerPaused()';
}


}




/// @nodoc


class TimerResumedEvent implements TimerScreenEvent {
  const TimerResumedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerResumedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenEvent.TimerResumed()';
}


}




/// @nodoc


class TimerResetEvent implements TimerScreenEvent {
  const TimerResetEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerResetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenEvent.TimerReset()';
}


}




/// @nodoc


class TimerTickedEvent implements TimerScreenEvent {
  const TimerTickedEvent(this.durationModel);
  

 final  DurationModel durationModel;

/// Create a copy of TimerScreenEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimerTickedEventCopyWith<TimerTickedEvent> get copyWith => _$TimerTickedEventCopyWithImpl<TimerTickedEvent>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerTickedEvent&&(identical(other.durationModel, durationModel) || other.durationModel == durationModel));
}


@override
int get hashCode => Object.hash(runtimeType,durationModel);

@override
String toString() {
  return 'TimerScreenEvent.TimerTicked(durationModel: $durationModel)';
}


}

/// @nodoc
abstract mixin class $TimerTickedEventCopyWith<$Res> implements $TimerScreenEventCopyWith<$Res> {
  factory $TimerTickedEventCopyWith(TimerTickedEvent value, $Res Function(TimerTickedEvent) _then) = _$TimerTickedEventCopyWithImpl;
@useResult
$Res call({
 DurationModel durationModel
});




}
/// @nodoc
class _$TimerTickedEventCopyWithImpl<$Res>
    implements $TimerTickedEventCopyWith<$Res> {
  _$TimerTickedEventCopyWithImpl(this._self, this._then);

  final TimerTickedEvent _self;
  final $Res Function(TimerTickedEvent) _then;

/// Create a copy of TimerScreenEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? durationModel = null,}) {
  return _then(TimerTickedEvent(
null == durationModel ? _self.durationModel : durationModel // ignore: cast_nullable_to_non_nullable
as DurationModel,
  ));
}


}

/// @nodoc


class AddLapEvent implements TimerScreenEvent {
  const AddLapEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddLapEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenEvent.AddLap()';
}


}




/// @nodoc


class AppLogoutEvent implements TimerScreenEvent {
  const AppLogoutEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppLogoutEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenEvent.AppLogout()';
}


}




// dart format on
