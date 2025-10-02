// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingScreenStates {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingScreenStates);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenStates()';
}


}

/// @nodoc
class $OnboardingScreenStatesCopyWith<$Res>  {
$OnboardingScreenStatesCopyWith(OnboardingScreenStates _, $Res Function(OnboardingScreenStates) __);
}


/// Adds pattern-matching-related methods to [OnboardingScreenStates].
extension OnboardingScreenStatesPatterns on OnboardingScreenStates {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DisplayOnboardingView value)?  displayOnboardingView,TResult Function( _DisplayLoadingView value)?  loadingView,TResult Function( _DisplayErrorView value)?  errorView,TResult Function( _StartNextScreen value)?  startNextScreen,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DisplayOnboardingView() when displayOnboardingView != null:
return displayOnboardingView(_that);case _DisplayLoadingView() when loadingView != null:
return loadingView(_that);case _DisplayErrorView() when errorView != null:
return errorView(_that);case _StartNextScreen() when startNextScreen != null:
return startNextScreen(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DisplayOnboardingView value)  displayOnboardingView,required TResult Function( _DisplayLoadingView value)  loadingView,required TResult Function( _DisplayErrorView value)  errorView,required TResult Function( _StartNextScreen value)  startNextScreen,}){
final _that = this;
switch (_that) {
case _DisplayOnboardingView():
return displayOnboardingView(_that);case _DisplayLoadingView():
return loadingView(_that);case _DisplayErrorView():
return errorView(_that);case _StartNextScreen():
return startNextScreen(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DisplayOnboardingView value)?  displayOnboardingView,TResult? Function( _DisplayLoadingView value)?  loadingView,TResult? Function( _DisplayErrorView value)?  errorView,TResult? Function( _StartNextScreen value)?  startNextScreen,}){
final _that = this;
switch (_that) {
case _DisplayOnboardingView() when displayOnboardingView != null:
return displayOnboardingView(_that);case _DisplayLoadingView() when loadingView != null:
return loadingView(_that);case _DisplayErrorView() when errorView != null:
return errorView(_that);case _StartNextScreen() when startNextScreen != null:
return startNextScreen(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  displayOnboardingView,TResult Function()?  loadingView,TResult Function( String errorMessage)?  errorView,TResult Function()?  startNextScreen,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DisplayOnboardingView() when displayOnboardingView != null:
return displayOnboardingView();case _DisplayLoadingView() when loadingView != null:
return loadingView();case _DisplayErrorView() when errorView != null:
return errorView(_that.errorMessage);case _StartNextScreen() when startNextScreen != null:
return startNextScreen();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  displayOnboardingView,required TResult Function()  loadingView,required TResult Function( String errorMessage)  errorView,required TResult Function()  startNextScreen,}) {final _that = this;
switch (_that) {
case _DisplayOnboardingView():
return displayOnboardingView();case _DisplayLoadingView():
return loadingView();case _DisplayErrorView():
return errorView(_that.errorMessage);case _StartNextScreen():
return startNextScreen();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  displayOnboardingView,TResult? Function()?  loadingView,TResult? Function( String errorMessage)?  errorView,TResult? Function()?  startNextScreen,}) {final _that = this;
switch (_that) {
case _DisplayOnboardingView() when displayOnboardingView != null:
return displayOnboardingView();case _DisplayLoadingView() when loadingView != null:
return loadingView();case _DisplayErrorView() when errorView != null:
return errorView(_that.errorMessage);case _StartNextScreen() when startNextScreen != null:
return startNextScreen();case _:
  return null;

}
}

}

/// @nodoc


class _DisplayOnboardingView implements OnboardingScreenStates {
  const _DisplayOnboardingView();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayOnboardingView);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenStates.displayOnboardingView()';
}


}




/// @nodoc


class _DisplayLoadingView implements OnboardingScreenStates {
  const _DisplayLoadingView();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayLoadingView);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenStates.loadingView()';
}


}




/// @nodoc


class _DisplayErrorView implements OnboardingScreenStates {
  const _DisplayErrorView(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of OnboardingScreenStates
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DisplayErrorViewCopyWith<_DisplayErrorView> get copyWith => __$DisplayErrorViewCopyWithImpl<_DisplayErrorView>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DisplayErrorView&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'OnboardingScreenStates.errorView(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$DisplayErrorViewCopyWith<$Res> implements $OnboardingScreenStatesCopyWith<$Res> {
  factory _$DisplayErrorViewCopyWith(_DisplayErrorView value, $Res Function(_DisplayErrorView) _then) = __$DisplayErrorViewCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class __$DisplayErrorViewCopyWithImpl<$Res>
    implements _$DisplayErrorViewCopyWith<$Res> {
  __$DisplayErrorViewCopyWithImpl(this._self, this._then);

  final _DisplayErrorView _self;
  final $Res Function(_DisplayErrorView) _then;

/// Create a copy of OnboardingScreenStates
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(_DisplayErrorView(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _StartNextScreen implements OnboardingScreenStates {
  const _StartNextScreen();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StartNextScreen);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenStates.startNextScreen()';
}


}




// dart format on
