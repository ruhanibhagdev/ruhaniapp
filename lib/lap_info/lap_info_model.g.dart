// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lap_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LapInfoModelImpl _$$LapInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$LapInfoModelImpl(
      lapNumber: (json['lapNumber'] as num).toInt(),
      hours: (json['hours'] as num).toInt(),
      minutes: (json['minutes'] as num).toInt(),
      seconds: (json['seconds'] as num).toInt(),
      lapDateTime: json['lapDateTime'] as String,
    );

Map<String, dynamic> _$$LapInfoModelImplToJson(_$LapInfoModelImpl instance) =>
    <String, dynamic>{
      'lapNumber': instance.lapNumber,
      'hours': instance.hours,
      'minutes': instance.minutes,
      'seconds': instance.seconds,
      'lapDateTime': instance.lapDateTime,
    };
