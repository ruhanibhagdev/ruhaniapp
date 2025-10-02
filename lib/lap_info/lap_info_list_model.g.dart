// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lap_info_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LapInfoListModel _$LapInfoListModelFromJson(Map<String, dynamic> json) =>
    _LapInfoListModel(
      lapList: (json['lap_info_list'] as List<dynamic>)
          .map((e) => LapInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LapInfoListModelToJson(_LapInfoListModel instance) =>
    <String, dynamic>{
      'lap_info_list': instance.lapList.map((e) => e.toJson()).toList(),
    };
