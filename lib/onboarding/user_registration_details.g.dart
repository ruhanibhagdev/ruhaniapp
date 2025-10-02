// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRegistrationDetails _$UserRegistrationDetailsFromJson(
  Map<String, dynamic> json,
) => _UserRegistrationDetails(
  userID: json['userId'] as String,
  name: json['name'] as String,
  emailID: json['emailId'] as String,
);

Map<String, dynamic> _$UserRegistrationDetailsToJson(
  _UserRegistrationDetails instance,
) => <String, dynamic>{
  'userId': instance.userID,
  'name': instance.name,
  'emailId': instance.emailID,
};
