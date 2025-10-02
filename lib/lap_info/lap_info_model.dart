import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lap_info_model.freezed.dart';
part 'lap_info_model.g.dart';

@freezed
abstract class LapInfoModel with _$LapInfoModel{

  @JsonSerializable(explicitToJson: true)
  const factory LapInfoModel({
    @JsonKey(name: "lapNumber")
    required int lapNumber,
    @JsonKey(name: "hours")
    required int hours,
    @JsonKey(name: "minutes")
    required int minutes,
    @JsonKey(name: "seconds")
    required int seconds,
    @JsonKey(name: "lapDateTime")
    required String lapDateTime
  }) = _LapInfoModel;

  factory LapInfoModel.fromJson(Map <String, dynamic> json) => _$LapInfoModelFromJson(json);

}