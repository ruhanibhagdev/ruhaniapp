// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_screen_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OnboardingScreenStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayOnboardingView,
    required TResult Function() loadingView,
    required TResult Function(String errorMessage) errorView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayOnboardingView,
    TResult? Function()? loadingView,
    TResult? Function(String errorMessage)? errorView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayOnboardingView,
    TResult Function()? loadingView,
    TResult Function(String errorMessage)? errorView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOnboardingView value)
        displayOnboardingView,
    required TResult Function(_DisplayLoadingView value) loadingView,
    required TResult Function(_DisplayErrorView value) errorView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult? Function(_DisplayLoadingView value)? loadingView,
    TResult? Function(_DisplayErrorView value)? errorView,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult Function(_DisplayLoadingView value)? loadingView,
    TResult Function(_DisplayErrorView value)? errorView,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingScreenStatesCopyWith<$Res> {
  factory $OnboardingScreenStatesCopyWith(OnboardingScreenStates value,
          $Res Function(OnboardingScreenStates) then) =
      _$OnboardingScreenStatesCopyWithImpl<$Res, OnboardingScreenStates>;
}

/// @nodoc
class _$OnboardingScreenStatesCopyWithImpl<$Res,
        $Val extends OnboardingScreenStates>
    implements $OnboardingScreenStatesCopyWith<$Res> {
  _$OnboardingScreenStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingScreenStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DisplayOnboardingViewImplCopyWith<$Res> {
  factory _$$DisplayOnboardingViewImplCopyWith(
          _$DisplayOnboardingViewImpl value,
          $Res Function(_$DisplayOnboardingViewImpl) then) =
      __$$DisplayOnboardingViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayOnboardingViewImplCopyWithImpl<$Res>
    extends _$OnboardingScreenStatesCopyWithImpl<$Res,
        _$DisplayOnboardingViewImpl>
    implements _$$DisplayOnboardingViewImplCopyWith<$Res> {
  __$$DisplayOnboardingViewImplCopyWithImpl(_$DisplayOnboardingViewImpl _value,
      $Res Function(_$DisplayOnboardingViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingScreenStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisplayOnboardingViewImpl implements _DisplayOnboardingView {
  const _$DisplayOnboardingViewImpl();

  @override
  String toString() {
    return 'OnboardingScreenStates.displayOnboardingView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayOnboardingViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayOnboardingView,
    required TResult Function() loadingView,
    required TResult Function(String errorMessage) errorView,
  }) {
    return displayOnboardingView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayOnboardingView,
    TResult? Function()? loadingView,
    TResult? Function(String errorMessage)? errorView,
  }) {
    return displayOnboardingView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayOnboardingView,
    TResult Function()? loadingView,
    TResult Function(String errorMessage)? errorView,
    required TResult orElse(),
  }) {
    if (displayOnboardingView != null) {
      return displayOnboardingView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOnboardingView value)
        displayOnboardingView,
    required TResult Function(_DisplayLoadingView value) loadingView,
    required TResult Function(_DisplayErrorView value) errorView,
  }) {
    return displayOnboardingView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult? Function(_DisplayLoadingView value)? loadingView,
    TResult? Function(_DisplayErrorView value)? errorView,
  }) {
    return displayOnboardingView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult Function(_DisplayLoadingView value)? loadingView,
    TResult Function(_DisplayErrorView value)? errorView,
    required TResult orElse(),
  }) {
    if (displayOnboardingView != null) {
      return displayOnboardingView(this);
    }
    return orElse();
  }
}

abstract class _DisplayOnboardingView implements OnboardingScreenStates {
  const factory _DisplayOnboardingView() = _$DisplayOnboardingViewImpl;
}

/// @nodoc
abstract class _$$DisplayLoadingViewImplCopyWith<$Res> {
  factory _$$DisplayLoadingViewImplCopyWith(_$DisplayLoadingViewImpl value,
          $Res Function(_$DisplayLoadingViewImpl) then) =
      __$$DisplayLoadingViewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayLoadingViewImplCopyWithImpl<$Res>
    extends _$OnboardingScreenStatesCopyWithImpl<$Res, _$DisplayLoadingViewImpl>
    implements _$$DisplayLoadingViewImplCopyWith<$Res> {
  __$$DisplayLoadingViewImplCopyWithImpl(_$DisplayLoadingViewImpl _value,
      $Res Function(_$DisplayLoadingViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingScreenStates
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisplayLoadingViewImpl implements _DisplayLoadingView {
  const _$DisplayLoadingViewImpl();

  @override
  String toString() {
    return 'OnboardingScreenStates.loadingView()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisplayLoadingViewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayOnboardingView,
    required TResult Function() loadingView,
    required TResult Function(String errorMessage) errorView,
  }) {
    return loadingView();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayOnboardingView,
    TResult? Function()? loadingView,
    TResult? Function(String errorMessage)? errorView,
  }) {
    return loadingView?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayOnboardingView,
    TResult Function()? loadingView,
    TResult Function(String errorMessage)? errorView,
    required TResult orElse(),
  }) {
    if (loadingView != null) {
      return loadingView();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOnboardingView value)
        displayOnboardingView,
    required TResult Function(_DisplayLoadingView value) loadingView,
    required TResult Function(_DisplayErrorView value) errorView,
  }) {
    return loadingView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult? Function(_DisplayLoadingView value)? loadingView,
    TResult? Function(_DisplayErrorView value)? errorView,
  }) {
    return loadingView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult Function(_DisplayLoadingView value)? loadingView,
    TResult Function(_DisplayErrorView value)? errorView,
    required TResult orElse(),
  }) {
    if (loadingView != null) {
      return loadingView(this);
    }
    return orElse();
  }
}

abstract class _DisplayLoadingView implements OnboardingScreenStates {
  const factory _DisplayLoadingView() = _$DisplayLoadingViewImpl;
}

/// @nodoc
abstract class _$$DisplayErrorViewImplCopyWith<$Res> {
  factory _$$DisplayErrorViewImplCopyWith(_$DisplayErrorViewImpl value,
          $Res Function(_$DisplayErrorViewImpl) then) =
      __$$DisplayErrorViewImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$DisplayErrorViewImplCopyWithImpl<$Res>
    extends _$OnboardingScreenStatesCopyWithImpl<$Res, _$DisplayErrorViewImpl>
    implements _$$DisplayErrorViewImplCopyWith<$Res> {
  __$$DisplayErrorViewImplCopyWithImpl(_$DisplayErrorViewImpl _value,
      $Res Function(_$DisplayErrorViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingScreenStates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$DisplayErrorViewImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DisplayErrorViewImpl implements _DisplayErrorView {
  const _$DisplayErrorViewImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'OnboardingScreenStates.errorView(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayErrorViewImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of OnboardingScreenStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayErrorViewImplCopyWith<_$DisplayErrorViewImpl> get copyWith =>
      __$$DisplayErrorViewImplCopyWithImpl<_$DisplayErrorViewImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() displayOnboardingView,
    required TResult Function() loadingView,
    required TResult Function(String errorMessage) errorView,
  }) {
    return errorView(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? displayOnboardingView,
    TResult? Function()? loadingView,
    TResult? Function(String errorMessage)? errorView,
  }) {
    return errorView?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? displayOnboardingView,
    TResult Function()? loadingView,
    TResult Function(String errorMessage)? errorView,
    required TResult orElse(),
  }) {
    if (errorView != null) {
      return errorView(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayOnboardingView value)
        displayOnboardingView,
    required TResult Function(_DisplayLoadingView value) loadingView,
    required TResult Function(_DisplayErrorView value) errorView,
  }) {
    return errorView(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult? Function(_DisplayLoadingView value)? loadingView,
    TResult? Function(_DisplayErrorView value)? errorView,
  }) {
    return errorView?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayOnboardingView value)? displayOnboardingView,
    TResult Function(_DisplayLoadingView value)? loadingView,
    TResult Function(_DisplayErrorView value)? errorView,
    required TResult orElse(),
  }) {
    if (errorView != null) {
      return errorView(this);
    }
    return orElse();
  }
}

abstract class _DisplayErrorView implements OnboardingScreenStates {
  const factory _DisplayErrorView(final String errorMessage) =
      _$DisplayErrorViewImpl;

  String get errorMessage;

  /// Create a copy of OnboardingScreenStates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayErrorViewImplCopyWith<_$DisplayErrorViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
