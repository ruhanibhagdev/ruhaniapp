// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_screen_events.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OnboardingScreenEvents {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnboardingScreenEvents);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenEvents()';
}


}

/// @nodoc
class $OnboardingScreenEventsCopyWith<$Res>  {
$OnboardingScreenEventsCopyWith(OnboardingScreenEvents _, $Res Function(OnboardingScreenEvents) __);
}


/// Adds pattern-matching-related methods to [OnboardingScreenEvents].
extension OnboardingScreenEventsPatterns on OnboardingScreenEvents {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitializeOnboardingEvent value)?  InitializeOnboarding,TResult Function( StartGoogleSignInEvent value)?  StartGoogleSignIn,TResult Function( SignInSuccessEvent value)?  SignInSuccess,TResult Function( SignInFailedEvent value)?  SignInFailed,TResult Function( StartAppleSignInEvent value)?  StartAppleSignIn,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitializeOnboardingEvent() when InitializeOnboarding != null:
return InitializeOnboarding(_that);case StartGoogleSignInEvent() when StartGoogleSignIn != null:
return StartGoogleSignIn(_that);case SignInSuccessEvent() when SignInSuccess != null:
return SignInSuccess(_that);case SignInFailedEvent() when SignInFailed != null:
return SignInFailed(_that);case StartAppleSignInEvent() when StartAppleSignIn != null:
return StartAppleSignIn(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitializeOnboardingEvent value)  InitializeOnboarding,required TResult Function( StartGoogleSignInEvent value)  StartGoogleSignIn,required TResult Function( SignInSuccessEvent value)  SignInSuccess,required TResult Function( SignInFailedEvent value)  SignInFailed,required TResult Function( StartAppleSignInEvent value)  StartAppleSignIn,}){
final _that = this;
switch (_that) {
case InitializeOnboardingEvent():
return InitializeOnboarding(_that);case StartGoogleSignInEvent():
return StartGoogleSignIn(_that);case SignInSuccessEvent():
return SignInSuccess(_that);case SignInFailedEvent():
return SignInFailed(_that);case StartAppleSignInEvent():
return StartAppleSignIn(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitializeOnboardingEvent value)?  InitializeOnboarding,TResult? Function( StartGoogleSignInEvent value)?  StartGoogleSignIn,TResult? Function( SignInSuccessEvent value)?  SignInSuccess,TResult? Function( SignInFailedEvent value)?  SignInFailed,TResult? Function( StartAppleSignInEvent value)?  StartAppleSignIn,}){
final _that = this;
switch (_that) {
case InitializeOnboardingEvent() when InitializeOnboarding != null:
return InitializeOnboarding(_that);case StartGoogleSignInEvent() when StartGoogleSignIn != null:
return StartGoogleSignIn(_that);case SignInSuccessEvent() when SignInSuccess != null:
return SignInSuccess(_that);case SignInFailedEvent() when SignInFailed != null:
return SignInFailed(_that);case StartAppleSignInEvent() when StartAppleSignIn != null:
return StartAppleSignIn(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  InitializeOnboarding,TResult Function()?  StartGoogleSignIn,TResult Function()?  SignInSuccess,TResult Function()?  SignInFailed,TResult Function()?  StartAppleSignIn,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitializeOnboardingEvent() when InitializeOnboarding != null:
return InitializeOnboarding();case StartGoogleSignInEvent() when StartGoogleSignIn != null:
return StartGoogleSignIn();case SignInSuccessEvent() when SignInSuccess != null:
return SignInSuccess();case SignInFailedEvent() when SignInFailed != null:
return SignInFailed();case StartAppleSignInEvent() when StartAppleSignIn != null:
return StartAppleSignIn();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  InitializeOnboarding,required TResult Function()  StartGoogleSignIn,required TResult Function()  SignInSuccess,required TResult Function()  SignInFailed,required TResult Function()  StartAppleSignIn,}) {final _that = this;
switch (_that) {
case InitializeOnboardingEvent():
return InitializeOnboarding();case StartGoogleSignInEvent():
return StartGoogleSignIn();case SignInSuccessEvent():
return SignInSuccess();case SignInFailedEvent():
return SignInFailed();case StartAppleSignInEvent():
return StartAppleSignIn();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  InitializeOnboarding,TResult? Function()?  StartGoogleSignIn,TResult? Function()?  SignInSuccess,TResult? Function()?  SignInFailed,TResult? Function()?  StartAppleSignIn,}) {final _that = this;
switch (_that) {
case InitializeOnboardingEvent() when InitializeOnboarding != null:
return InitializeOnboarding();case StartGoogleSignInEvent() when StartGoogleSignIn != null:
return StartGoogleSignIn();case SignInSuccessEvent() when SignInSuccess != null:
return SignInSuccess();case SignInFailedEvent() when SignInFailed != null:
return SignInFailed();case StartAppleSignInEvent() when StartAppleSignIn != null:
return StartAppleSignIn();case _:
  return null;

}
}

}

/// @nodoc


class InitializeOnboardingEvent implements OnboardingScreenEvents {
  const InitializeOnboardingEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitializeOnboardingEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenEvents.InitializeOnboarding()';
}


}




/// @nodoc


class StartGoogleSignInEvent implements OnboardingScreenEvents {
  const StartGoogleSignInEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartGoogleSignInEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenEvents.StartGoogleSignIn()';
}


}




/// @nodoc


class SignInSuccessEvent implements OnboardingScreenEvents {
  const SignInSuccessEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInSuccessEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenEvents.SignInSuccess()';
}


}




/// @nodoc


class SignInFailedEvent implements OnboardingScreenEvents {
  const SignInFailedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInFailedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenEvents.SignInFailed()';
}


}




/// @nodoc


class StartAppleSignInEvent implements OnboardingScreenEvents {
  const StartAppleSignInEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartAppleSignInEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'OnboardingScreenEvents.StartAppleSignIn()';
}


}




// dart format on
