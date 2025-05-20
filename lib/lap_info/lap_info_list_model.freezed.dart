// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lap_info_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LapInfoListModel _$LapInfoListModelFromJson(Map<String, dynamic> json) {
  return _LapInfoListModel.fromJson(json);
}

/// @nodoc
mixin _$LapInfoListModel {
  @JsonKey(name: "lap_info_list")
  List<LapInfoModel> get lapList => throw _privateConstructorUsedError;

  /// Serializes this LapInfoListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LapInfoListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LapInfoListModelCopyWith<LapInfoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LapInfoListModelCopyWith<$Res> {
  factory $LapInfoListModelCopyWith(
          LapInfoListModel value, $Res Function(LapInfoListModel) then) =
      _$LapInfoListModelCopyWithImpl<$Res, LapInfoListModel>;
  @useResult
  $Res call({@JsonKey(name: "lap_info_list") List<LapInfoModel> lapList});
}

/// @nodoc
class _$LapInfoListModelCopyWithImpl<$Res, $Val extends LapInfoListModel>
    implements $LapInfoListModelCopyWith<$Res> {
  _$LapInfoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LapInfoListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lapList = null,
  }) {
    return _then(_value.copyWith(
      lapList: null == lapList
          ? _value.lapList
          : lapList // ignore: cast_nullable_to_non_nullable
              as List<LapInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LapInfoListModelImplCopyWith<$Res>
    implements $LapInfoListModelCopyWith<$Res> {
  factory _$$LapInfoListModelImplCopyWith(_$LapInfoListModelImpl value,
          $Res Function(_$LapInfoListModelImpl) then) =
      __$$LapInfoListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "lap_info_list") List<LapInfoModel> lapList});
}

/// @nodoc
class __$$LapInfoListModelImplCopyWithImpl<$Res>
    extends _$LapInfoListModelCopyWithImpl<$Res, _$LapInfoListModelImpl>
    implements _$$LapInfoListModelImplCopyWith<$Res> {
  __$$LapInfoListModelImplCopyWithImpl(_$LapInfoListModelImpl _value,
      $Res Function(_$LapInfoListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LapInfoListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lapList = null,
  }) {
    return _then(_$LapInfoListModelImpl(
      lapList: null == lapList
          ? _value._lapList
          : lapList // ignore: cast_nullable_to_non_nullable
              as List<LapInfoModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LapInfoListModelImpl implements _LapInfoListModel {
  const _$LapInfoListModelImpl(
      {@JsonKey(name: "lap_info_list")
      required final List<LapInfoModel> lapList})
      : _lapList = lapList;

  factory _$LapInfoListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LapInfoListModelImplFromJson(json);

  final List<LapInfoModel> _lapList;
  @override
  @JsonKey(name: "lap_info_list")
  List<LapInfoModel> get lapList {
    if (_lapList is EqualUnmodifiableListView) return _lapList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lapList);
  }

  @override
  String toString() {
    return 'LapInfoListModel(lapList: $lapList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LapInfoListModelImpl &&
            const DeepCollectionEquality().equals(other._lapList, _lapList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_lapList));

  /// Create a copy of LapInfoListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LapInfoListModelImplCopyWith<_$LapInfoListModelImpl> get copyWith =>
      __$$LapInfoListModelImplCopyWithImpl<_$LapInfoListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LapInfoListModelImplToJson(
      this,
    );
  }
}

abstract class _LapInfoListModel implements LapInfoListModel {
  const factory _LapInfoListModel(
      {@JsonKey(name: "lap_info_list")
      required final List<LapInfoModel> lapList}) = _$LapInfoListModelImpl;

  factory _LapInfoListModel.fromJson(Map<String, dynamic> json) =
      _$LapInfoListModelImpl.fromJson;

  @override
  @JsonKey(name: "lap_info_list")
  List<LapInfoModel> get lapList;

  /// Create a copy of LapInfoListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LapInfoListModelImplCopyWith<_$LapInfoListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
