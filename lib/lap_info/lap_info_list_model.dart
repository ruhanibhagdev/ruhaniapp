import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'lap_info_model.dart';

part 'lap_info_list_model.freezed.dart';
part 'lap_info_list_model.g.dart';

@freezed
abstract class LapInfoListModel with _$LapInfoListModel{

  @JsonSerializable(explicitToJson: true)
  const factory LapInfoListModel({
    @JsonKey(name: "lap_info_list")
    required List<LapInfoModel> lapList,
  }) = _LapInfoListModel;

  factory LapInfoListModel.fromJson(Map <String, dynamic> json) => _$LapInfoListModelFromJson(json);

}