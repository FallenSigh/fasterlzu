// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(
      app_os: (json['app_os'] as num).toInt(),
      name: json['name'] as String,
      pwd: json['pwd'] as String,
    );

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{
      'app_os': instance.app_os,
      'name': instance.name,
      'pwd': instance.pwd,
    };

_$LoginDataImpl _$$LoginDataImplFromJson(Map<String, dynamic> json) =>
    _$LoginDataImpl(
      login_token: json['login_token'] as String?,
      gateway_token: json['gateway_token'] as String?,
      reset_pwd_token: json['reset_pwd_token'] as String?,
      need_conf_security: json['need_conf_security'] as String?,
    );

Map<String, dynamic> _$$LoginDataImplToJson(_$LoginDataImpl instance) =>
    <String, dynamic>{
      'login_token': instance.login_token,
      'gateway_token': instance.gateway_token,
      'reset_pwd_token': instance.reset_pwd_token,
      'need_conf_security': instance.need_conf_security,
    };

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data:
          json['data'] == null
              ? null
              : LoginData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$UserImageRequestImpl _$$UserImageRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UserImageRequestImpl(loginToken: json['loginToken'] as String);

Map<String, dynamic> _$$UserImageRequestImplToJson(
  _$UserImageRequestImpl instance,
) => <String, dynamic>{'loginToken': instance.loginToken};

_$UserImageDataImpl _$$UserImageDataImplFromJson(Map<String, dynamic> json) =>
    _$UserImageDataImpl(
      zp: json['zp'] as String?,
      xykh: json['xykh'] as String?,
      rylb: json['rylb'] as String?,
      zpbbh: json['zpbbh'] as String?,
      rn: json['rn'] as String?,
    );

Map<String, dynamic> _$$UserImageDataImplToJson(_$UserImageDataImpl instance) =>
    <String, dynamic>{
      'zp': instance.zp,
      'xykh': instance.xykh,
      'rylb': instance.rylb,
      'zpbbh': instance.zpbbh,
      'rn': instance.rn,
    };

_$UserImageResponseImpl _$$UserImageResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserImageResponseImpl(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data:
      json['data'] == null
          ? null
          : UserImageData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UserImageResponseImplToJson(
  _$UserImageResponseImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_$UserInfoRequestImpl _$$UserInfoRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UserInfoRequestImpl(loginToken: json['loginToken'] as String);

Map<String, dynamic> _$$UserInfoRequestImplToJson(
  _$UserInfoRequestImpl instance,
) => <String, dynamic>{'loginToken': instance.loginToken};

_$UserInfoDataImpl _$$UserInfoDataImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoDataImpl(
      xtid: json['xtid'] as String?,
      rylbm: json['rylbm'] as String?,
      rylb: json['rylb'] as String?,
      xykh: json['xykh'] as String?,
      rybh: json['rybh'] as String?,
      xm: json['xm'] as String?,
      xmpy: json['xmpy'] as String?,
      dwh: json['dwh'] as String?,
      dwmc: json['dwmc'] as String?,
      xbm: json['xbm'] as String?,
      dqztm: json['dqztm'] as String?,
      dqzt: json['dqzt'] as String?,
      sfzjlxm: json['sfzjlxm'] as String?,
      sfzjh: json['sfzjh'] as String?,
      csrq: json['csrq'] as String?,
      mzm: json['mzm'] as String?,
      mz: json['mz'] as String?,
      zzmmm: json['zzmmm'] as String?,
      jxrq: json['jxrq'] as String?,
      gjdqm: json['gjdqm'] as String?,
      csdm: json['csdm'] as String?,
      jg: json['jg'] as String?,
      yddh: json['yddh'] as String?,
      dzxx: json['dzxx'] as String?,
      sfzx: json['sfzx'] as String?,
      sfxj: json['sfxj'] as String?,
      bz: json['bz'] as String?,
      zhgxsj: json['zhgxsj'] as String?,
      xb: json['xb'] as String?,
      etong_acc_no: json['etong_acc_no'] as String?,
      wxh: json['wxh'] as String?,
      nc: json['nc'] as String?,
      gxqm: json['gxqm'] as String?,
    );

Map<String, dynamic> _$$UserInfoDataImplToJson(_$UserInfoDataImpl instance) =>
    <String, dynamic>{
      'xtid': instance.xtid,
      'rylbm': instance.rylbm,
      'rylb': instance.rylb,
      'xykh': instance.xykh,
      'rybh': instance.rybh,
      'xm': instance.xm,
      'xmpy': instance.xmpy,
      'dwh': instance.dwh,
      'dwmc': instance.dwmc,
      'xbm': instance.xbm,
      'dqztm': instance.dqztm,
      'dqzt': instance.dqzt,
      'sfzjlxm': instance.sfzjlxm,
      'sfzjh': instance.sfzjh,
      'csrq': instance.csrq,
      'mzm': instance.mzm,
      'mz': instance.mz,
      'zzmmm': instance.zzmmm,
      'jxrq': instance.jxrq,
      'gjdqm': instance.gjdqm,
      'csdm': instance.csdm,
      'jg': instance.jg,
      'yddh': instance.yddh,
      'dzxx': instance.dzxx,
      'sfzx': instance.sfzx,
      'sfxj': instance.sfxj,
      'bz': instance.bz,
      'zhgxsj': instance.zhgxsj,
      'xb': instance.xb,
      'etong_acc_no': instance.etong_acc_no,
      'wxh': instance.wxh,
      'nc': instance.nc,
      'gxqm': instance.gxqm,
    };

_$UserInfoResponseImpl _$$UserInfoResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UserInfoResponseImpl(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data:
      json['data'] == null
          ? null
          : UserInfoData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$UserInfoResponseImplToJson(
  _$UserInfoResponseImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};

_$StringDataResponseImpl _$$StringDataResponseImplFromJson(
  Map<String, dynamic> json,
) => _$StringDataResponseImpl(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  data: json['data'] as String?,
);

Map<String, dynamic> _$$StringDataResponseImplToJson(
  _$StringDataResponseImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'data': instance.data,
};
