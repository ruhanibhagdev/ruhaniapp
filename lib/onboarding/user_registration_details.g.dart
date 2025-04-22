// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_registration_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserRegistrationDetailsImpl _$$UserRegistrationDetailsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserRegistrationDetailsImpl(
      userID: json['userId'] as String,
      name: json['name'] as String,
      emailID: json['emailId'] as String,
    );

Map<String, dynamic> _$$UserRegistrationDetailsImplToJson(
        _$UserRegistrationDetailsImpl instance) =>
    <String, dynamic>{
      'userId': instance.userID,
      'name': instance.name,
      'emailId': instance.emailID,
    };
