import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_registration_details.freezed.dart';
part 'user_registration_details.g.dart';

@freezed
class UserRegistrationDetails with _$UserRegistrationDetails{

  @JsonSerializable(explicitToJson: true)
  const factory UserRegistrationDetails({
    @JsonKey(name: "userId")
    required String userID,
    @JsonKey(name: "name")
    required String name,
    @JsonKey(name: "emailId")
    required String emailID,
  }) = _UserRegistrationDetails;

  factory UserRegistrationDetails.fromJson(Map <String, dynamic> json) => _$UserRegistrationDetailsFromJson(json);

}