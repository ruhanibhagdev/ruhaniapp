// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lap_info_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LapInfoListModelImpl _$$LapInfoListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LapInfoListModelImpl(
      lapList: (json['lap_info_list'] as List<dynamic>)
          .map((e) => LapInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LapInfoListModelImplToJson(
        _$LapInfoListModelImpl instance) =>
    <String, dynamic>{
      'lap_info_list': instance.lapList.map((e) => e.toJson()).toList(),
    };
