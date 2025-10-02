// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TimerScreenState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimerScreenState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenState()';
}


}

/// @nodoc
class $TimerScreenStateCopyWith<$Res>  {
$TimerScreenStateCopyWith(TimerScreenState _, $Res Function(TimerScreenState) __);
}


/// Adds pattern-matching-related methods to [TimerScreenState].
extension TimerScreenStatePatterns on TimerScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _TimerInitial value)?  TimerInitialState,TResult Function( _TimerPause value)?  TimerPauseState,TResult Function( _TimerRunningState value)?  TimerRunningState,TResult Function( _TimerRunComplete value)?  TimerRunCompleteState,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TimerInitial() when TimerInitialState != null:
return TimerInitialState(_that);case _TimerPause() when TimerPauseState != null:
return TimerPauseState(_that);case _TimerRunningState() when TimerRunningState != null:
return TimerRunningState(_that);case _TimerRunComplete() when TimerRunCompleteState != null:
return TimerRunCompleteState(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _TimerInitial value)  TimerInitialState,required TResult Function( _TimerPause value)  TimerPauseState,required TResult Function( _TimerRunningState value)  TimerRunningState,required TResult Function( _TimerRunComplete value)  TimerRunCompleteState,}){
final _that = this;
switch (_that) {
case _TimerInitial():
return TimerInitialState(_that);case _TimerPause():
return TimerPauseState(_that);case _TimerRunningState():
return TimerRunningState(_that);case _TimerRunComplete():
return TimerRunCompleteState(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _TimerInitial value)?  TimerInitialState,TResult? Function( _TimerPause value)?  TimerPauseState,TResult? Function( _TimerRunningState value)?  TimerRunningState,TResult? Function( _TimerRunComplete value)?  TimerRunCompleteState,}){
final _that = this;
switch (_that) {
case _TimerInitial() when TimerInitialState != null:
return TimerInitialState(_that);case _TimerPause() when TimerPauseState != null:
return TimerPauseState(_that);case _TimerRunningState() when TimerRunningState != null:
return TimerRunningState(_that);case _TimerRunComplete() when TimerRunCompleteState != null:
return TimerRunCompleteState(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  TimerInitialState,TResult Function( DurationModel durationModel)?  TimerPauseState,TResult Function( DurationModel durationModel,  bool isGoalReached)?  TimerRunningState,TResult Function( DurationModel durationModel)?  TimerRunCompleteState,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TimerInitial() when TimerInitialState != null:
return TimerInitialState();case _TimerPause() when TimerPauseState != null:
return TimerPauseState(_that.durationModel);case _TimerRunningState() when TimerRunningState != null:
return TimerRunningState(_that.durationModel,_that.isGoalReached);case _TimerRunComplete() when TimerRunCompleteState != null:
return TimerRunCompleteState(_that.durationModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  TimerInitialState,required TResult Function( DurationModel durationModel)  TimerPauseState,required TResult Function( DurationModel durationModel,  bool isGoalReached)  TimerRunningState,required TResult Function( DurationModel durationModel)  TimerRunCompleteState,}) {final _that = this;
switch (_that) {
case _TimerInitial():
return TimerInitialState();case _TimerPause():
return TimerPauseState(_that.durationModel);case _TimerRunningState():
return TimerRunningState(_that.durationModel,_that.isGoalReached);case _TimerRunComplete():
return TimerRunCompleteState(_that.durationModel);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  TimerInitialState,TResult? Function( DurationModel durationModel)?  TimerPauseState,TResult? Function( DurationModel durationModel,  bool isGoalReached)?  TimerRunningState,TResult? Function( DurationModel durationModel)?  TimerRunCompleteState,}) {final _that = this;
switch (_that) {
case _TimerInitial() when TimerInitialState != null:
return TimerInitialState();case _TimerPause() when TimerPauseState != null:
return TimerPauseState(_that.durationModel);case _TimerRunningState() when TimerRunningState != null:
return TimerRunningState(_that.durationModel,_that.isGoalReached);case _TimerRunComplete() when TimerRunCompleteState != null:
return TimerRunCompleteState(_that.durationModel);case _:
  return null;

}
}

}

/// @nodoc


class _TimerInitial implements TimerScreenState {
  const _TimerInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'TimerScreenState.TimerInitialState()';
}


}




/// @nodoc


class _TimerPause implements TimerScreenState {
  const _TimerPause(this.durationModel);
  

 final  DurationModel durationModel;

/// Create a copy of TimerScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimerPauseCopyWith<_TimerPause> get copyWith => __$TimerPauseCopyWithImpl<_TimerPause>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerPause&&(identical(other.durationModel, durationModel) || other.durationModel == durationModel));
}


@override
int get hashCode => Object.hash(runtimeType,durationModel);

@override
String toString() {
  return 'TimerScreenState.TimerPauseState(durationModel: $durationModel)';
}


}

/// @nodoc
abstract mixin class _$TimerPauseCopyWith<$Res> implements $TimerScreenStateCopyWith<$Res> {
  factory _$TimerPauseCopyWith(_TimerPause value, $Res Function(_TimerPause) _then) = __$TimerPauseCopyWithImpl;
@useResult
$Res call({
 DurationModel durationModel
});




}
/// @nodoc
class __$TimerPauseCopyWithImpl<$Res>
    implements _$TimerPauseCopyWith<$Res> {
  __$TimerPauseCopyWithImpl(this._self, this._then);

  final _TimerPause _self;
  final $Res Function(_TimerPause) _then;

/// Create a copy of TimerScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? durationModel = null,}) {
  return _then(_TimerPause(
null == durationModel ? _self.durationModel : durationModel // ignore: cast_nullable_to_non_nullable
as DurationModel,
  ));
}


}

/// @nodoc


class _TimerRunningState implements TimerScreenState {
  const _TimerRunningState(this.durationModel, this.isGoalReached);
  

 final  DurationModel durationModel;
 final  bool isGoalReached;

/// Create a copy of TimerScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimerRunningStateCopyWith<_TimerRunningState> get copyWith => __$TimerRunningStateCopyWithImpl<_TimerRunningState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerRunningState&&(identical(other.durationModel, durationModel) || other.durationModel == durationModel)&&(identical(other.isGoalReached, isGoalReached) || other.isGoalReached == isGoalReached));
}


@override
int get hashCode => Object.hash(runtimeType,durationModel,isGoalReached);

@override
String toString() {
  return 'TimerScreenState.TimerRunningState(durationModel: $durationModel, isGoalReached: $isGoalReached)';
}


}

/// @nodoc
abstract mixin class _$TimerRunningStateCopyWith<$Res> implements $TimerScreenStateCopyWith<$Res> {
  factory _$TimerRunningStateCopyWith(_TimerRunningState value, $Res Function(_TimerRunningState) _then) = __$TimerRunningStateCopyWithImpl;
@useResult
$Res call({
 DurationModel durationModel, bool isGoalReached
});




}
/// @nodoc
class __$TimerRunningStateCopyWithImpl<$Res>
    implements _$TimerRunningStateCopyWith<$Res> {
  __$TimerRunningStateCopyWithImpl(this._self, this._then);

  final _TimerRunningState _self;
  final $Res Function(_TimerRunningState) _then;

/// Create a copy of TimerScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? durationModel = null,Object? isGoalReached = null,}) {
  return _then(_TimerRunningState(
null == durationModel ? _self.durationModel : durationModel // ignore: cast_nullable_to_non_nullable
as DurationModel,null == isGoalReached ? _self.isGoalReached : isGoalReached // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _TimerRunComplete implements TimerScreenState {
  const _TimerRunComplete(this.durationModel);
  

 final  DurationModel durationModel;

/// Create a copy of TimerScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimerRunCompleteCopyWith<_TimerRunComplete> get copyWith => __$TimerRunCompleteCopyWithImpl<_TimerRunComplete>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimerRunComplete&&(identical(other.durationModel, durationModel) || other.durationModel == durationModel));
}


@override
int get hashCode => Object.hash(runtimeType,durationModel);

@override
String toString() {
  return 'TimerScreenState.TimerRunCompleteState(durationModel: $durationModel)';
}


}

/// @nodoc
abstract mixin class _$TimerRunCompleteCopyWith<$Res> implements $TimerScreenStateCopyWith<$Res> {
  factory _$TimerRunCompleteCopyWith(_TimerRunComplete value, $Res Function(_TimerRunComplete) _then) = __$TimerRunCompleteCopyWithImpl;
@useResult
$Res call({
 DurationModel durationModel
});




}
/// @nodoc
class __$TimerRunCompleteCopyWithImpl<$Res>
    implements _$TimerRunCompleteCopyWith<$Res> {
  __$TimerRunCompleteCopyWithImpl(this._self, this._then);

  final _TimerRunComplete _self;
  final $Res Function(_TimerRunComplete) _then;

/// Create a copy of TimerScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? durationModel = null,}) {
  return _then(_TimerRunComplete(
null == durationModel ? _self.durationModel : durationModel // ignore: cast_nullable_to_non_nullable
as DurationModel,
  ));
}


}

// dart format on
