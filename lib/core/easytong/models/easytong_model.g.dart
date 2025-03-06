// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'easytong_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EtTokenResponseImpl _$$EtTokenResponseImplFromJson(
  Map<String, dynamic> json,
) => _$EtTokenResponseImpl(
  msg: json['msg'] as String,
  accNum: json['accNum'] as String?,
  code: (json['code'] as num).toInt(),
  token: json['token'] as String?,
);

Map<String, dynamic> _$$EtTokenResponseImplToJson(
  _$EtTokenResponseImpl instance,
) => <String, dynamic>{
  'msg': instance.msg,
  'accNum': instance.accNum,
  'code': instance.code,
  'token': instance.token,
};

_$GetH5QRCodeResponseImpl _$$GetH5QRCodeResponseImplFromJson(
  Map<String, dynamic> json,
) => _$GetH5QRCodeResponseImpl(
  authNum: json['authNum'] as String?,
  cardAccNum: json['cardAccNum'] as String?,
  qRCode: json['qRCode'] as String?,
  code: (json['code'] as num).toInt(),
  msg: json['msg'] as String,
);

Map<String, dynamic> _$$GetH5QRCodeResponseImplToJson(
  _$GetH5QRCodeResponseImpl instance,
) => <String, dynamic>{
  'authNum': instance.authNum,
  'cardAccNum': instance.cardAccNum,
  'qRCode': instance.qRCode,
  'code': instance.code,
  'msg': instance.msg,
};
