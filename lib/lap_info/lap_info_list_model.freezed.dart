// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lap_info_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LapInfoListModel {

@JsonKey(name: "lap_info_list") List<LapInfoModel> get lapList;
/// Create a copy of LapInfoListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LapInfoListModelCopyWith<LapInfoListModel> get copyWith => _$LapInfoListModelCopyWithImpl<LapInfoListModel>(this as LapInfoListModel, _$identity);

  /// Serializes this LapInfoListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LapInfoListModel&&const DeepCollectionEquality().equals(other.lapList, lapList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(lapList));

@override
String toString() {
  return 'LapInfoListModel(lapList: $lapList)';
}


}

/// @nodoc
abstract mixin class $LapInfoListModelCopyWith<$Res>  {
  factory $LapInfoListModelCopyWith(LapInfoListModel value, $Res Function(LapInfoListModel) _then) = _$LapInfoListModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: "lap_info_list") List<LapInfoModel> lapList
});




}
/// @nodoc
class _$LapInfoListModelCopyWithImpl<$Res>
    implements $LapInfoListModelCopyWith<$Res> {
  _$LapInfoListModelCopyWithImpl(this._self, this._then);

  final LapInfoListModel _self;
  final $Res Function(LapInfoListModel) _then;

/// Create a copy of LapInfoListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lapList = null,}) {
  return _then(_self.copyWith(
lapList: null == lapList ? _self.lapList : lapList // ignore: cast_nullable_to_non_nullable
as List<LapInfoModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [LapInfoListModel].
extension LapInfoListModelPatterns on LapInfoListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LapInfoListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LapInfoListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LapInfoListModel value)  $default,){
final _that = this;
switch (_that) {
case _LapInfoListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LapInfoListModel value)?  $default,){
final _that = this;
switch (_that) {
case _LapInfoListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: "lap_info_list")  List<LapInfoModel> lapList)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LapInfoListModel() when $default != null:
return $default(_that.lapList);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: "lap_info_list")  List<LapInfoModel> lapList)  $default,) {final _that = this;
switch (_that) {
case _LapInfoListModel():
return $default(_that.lapList);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: "lap_info_list")  List<LapInfoModel> lapList)?  $default,) {final _that = this;
switch (_that) {
case _LapInfoListModel() when $default != null:
return $default(_that.lapList);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _LapInfoListModel implements LapInfoListModel {
  const _LapInfoListModel({@JsonKey(name: "lap_info_list") required final  List<LapInfoModel> lapList}): _lapList = lapList;
  factory _LapInfoListModel.fromJson(Map<String, dynamic> json) => _$LapInfoListModelFromJson(json);

 final  List<LapInfoModel> _lapList;
@override@JsonKey(name: "lap_info_list") List<LapInfoModel> get lapList {
  if (_lapList is EqualUnmodifiableListView) return _lapList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lapList);
}


/// Create a copy of LapInfoListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LapInfoListModelCopyWith<_LapInfoListModel> get copyWith => __$LapInfoListModelCopyWithImpl<_LapInfoListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LapInfoListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LapInfoListModel&&const DeepCollectionEquality().equals(other._lapList, _lapList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_lapList));

@override
String toString() {
  return 'LapInfoListModel(lapList: $lapList)';
}


}

/// @nodoc
abstract mixin class _$LapInfoListModelCopyWith<$Res> implements $LapInfoListModelCopyWith<$Res> {
  factory _$LapInfoListModelCopyWith(_LapInfoListModel value, $Res Function(_LapInfoListModel) _then) = __$LapInfoListModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: "lap_info_list") List<LapInfoModel> lapList
});




}
/// @nodoc
class __$LapInfoListModelCopyWithImpl<$Res>
    implements _$LapInfoListModelCopyWith<$Res> {
  __$LapInfoListModelCopyWithImpl(this._self, this._then);

  final _LapInfoListModel _self;
  final $Res Function(_LapInfoListModel) _then;

/// Create a copy of LapInfoListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lapList = null,}) {
  return _then(_LapInfoListModel(
lapList: null == lapList ? _self._lapList : lapList // ignore: cast_nullable_to_non_nullable
as List<LapInfoModel>,
  ));
}


}

// dart format on
