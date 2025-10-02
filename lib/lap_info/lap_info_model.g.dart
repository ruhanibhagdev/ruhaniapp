// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lap_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LapInfoModel _$LapInfoModelFromJson(Map<String, dynamic> json) =>
    _LapInfoModel(
      lapNumber: (json['lapNumber'] as num).toInt(),
      hours: (json['hours'] as num).toInt(),
      minutes: (json['minutes'] as num).toInt(),
      seconds: (json['seconds'] as num).toInt(),
      lapDateTime: json['lapDateTime'] as String,
    );

Map<String, dynamic> _$LapInfoModelToJson(_LapInfoModel instance) =>
    <String, dynamic>{
      'lapNumber': instance.lapNumber,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'lapDateTime': instance.lapDateTime,
    };
