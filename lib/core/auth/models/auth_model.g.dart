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
      data: json['data'] == null
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
        Map<String, dynamic> json) =>
    _$UserImageRequestImpl(
      loginToken: json['loginToken'] as String,
    );

Map<String, dynamic> _$$UserImageRequestImplToJson(
        _$UserImageRequestImpl instance) =>
    <String, dynamic>{
      'loginToken': instance.loginToken,
    };

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
        Map<String, dynamic> json) =>
    _$UserImageResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : UserImageData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImageResponseImplToJson(
        _$UserImageResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$UserInfoRequestImpl _$$UserInfoRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInfoRequestImpl(
      loginToken: json['loginToken'] as String,
    );

Map<String, dynamic> _$$UserInfoRequestImplToJson(
        _$UserInfoRequestImpl instance) =>
    <String, dynamic>{
      'loginToken': instance.loginToken,
    };

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
        Map<String, dynamic> json) =>
    _$UserInfoResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : UserInfoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoResponseImplToJson(
        _$UserInfoResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$StringDataResponseImpl _$$StringDataResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$StringDataResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$StringDataResponseImplToJson(
        _$StringDataResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$ServiceInfoImpl _$$ServiceInfoImplFromJson(Map<String, dynamic> json) =>
    _$ServiceInfoImpl(
      service_info_id: json['service_info_id'] as String?,
      service_name: json['service_name'] as String?,
      app_icon: json['app_icon'] as String?,
      pc_icon: json['pc_icon'] as String?,
      unint_id: json['unint_id'] as String?,
      app_type: (json['app_type'] as num?)?.toInt(),
      service_type: json['service_type'] as String?,
      service_type_str: json['service_type_str'] as String?,
      android_main: json['android_main'] as String?,
      ios_main: json['ios_main'] as String?,
      h5_url: json['h5_url'] as String?,
      h5_pcurl: json['h5_pcurl'] as String?,
      version_id: json['version_id'] as String?,
      is_recommend: (json['is_recommend'] as num?)?.toInt(),
      start_time: json['start_time'] as String?,
      end_time: json['end_time'] as String?,
      service_sort: (json['service_sort'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      create_time: json['create_time'] as String?,
      create_user_id: json['create_user_id'] as String?,
      is_login: (json['is_login'] as num?)?.toInt(),
      is_new: (json['is_new'] as num?)?.toInt(),
      is_top: (json['is_top'] as num?)?.toInt(),
      is_hot: (json['is_hot'] as num?)?.toInt(),
      is_pay: (json['is_pay'] as num?)?.toInt(),
      isfull_screen: (json['isfull_screen'] as num?)?.toInt(),
      is_ignore_login: (json['is_ignore_login'] as num?)?.toInt(),
      cp_code: json['cp_code'] as String?,
      sign_key: json['sign_key'] as String?,
      app_id: json['app_id'] as String?,
      lzu_sign_key: json['lzu_sign_key'] as String?,
      h5_service_url: json['h5_service_url'] as String?,
      app_icon_url: json['app_icon_url'] as String?,
      pc_icon_url: json['pc_icon_url'] as String?,
      unint_name: json['unint_name'] as String?,
      role_str: json['role_str'] as String?,
      terminal_str: json['terminal_str'] as String?,
      terminal_ids: json['terminal_ids'] as String?,
      start_time_str: json['start_time_str'] as String?,
      end_time_str: json['end_time_str'] as String?,
      roles: json['roles'] as String?,
      role_ids: json['role_ids'] as String?,
      terminals: json['terminals'] as String?,
      key_word: json['key_word'] as String?,
      use_system: json['use_system'] as String?,
      first_letter: json['first_letter'] as String?,
      introduce: json['introduce'] as String?,
      condition: json['condition'] as String?,
      need_attention: json['need_attention'] as String?,
      contact_phone: json['contact_phone'] as String?,
      oh_service_id: json['oh_service_id'] as String?,
      object_ids: json['object_ids'] as String?,
      object_ids_str: json['object_ids_str'] as String?,
      pc_show_type: json['pc_show_type'] as String?,
      has_collected: json['has_collected'] as String?,
      fee_scale: json['fee_scale'] as String?,
      fee_scale_str: json['fee_scale_str'] as String?,
      handle_method: json['handle_method'] as String?,
      handle_method_str: json['handle_method_str'] as String?,
      co_organizer: json['co_organizer'] as String?,
      co_organizer_str: json['co_organizer_str'] as String?,
      expected_period: json['expected_period'] as String?,
      expected_period_str: json['expected_period_str'] as String?,
      is_show_detail: (json['is_show_detail'] as num?)?.toInt(),
      process_img_source: json['process_img_source'] as String?,
      process_img_url: json['process_img_url'] as String?,
      pxyj: json['pxyj'] as String?,
      cjsj: json['cjsj'] as String?,
      use_systems: (json['use_systems'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      oh_appid: json['oh_appid'] as String?,
      can_consult: json['can_consult'] as String?,
      can_evaluate: json['can_evaluate'] as String?,
      monitor_roleid: json['monitor_roleid'] as String?,
      maintainer_roleid: json['maintainer_roleid'] as String?,
    );

Map<String, dynamic> _$$ServiceInfoImplToJson(_$ServiceInfoImpl instance) =>
    <String, dynamic>{
      'service_info_id': instance.service_info_id,
      'service_name': instance.service_name,
      'app_icon': instance.app_icon,
      'pc_icon': instance.pc_icon,
      'unint_id': instance.unint_id,
      'app_type': instance.app_type,
      'service_type': instance.service_type,
      'service_type_str': instance.service_type_str,
      'android_main': instance.android_main,
      'ios_main': instance.ios_main,
      'h5_url': instance.h5_url,
      'h5_pcurl': instance.h5_pcurl,
      'version_id': instance.version_id,
      'is_recommend': instance.is_recommend,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'service_sort': instance.service_sort,
      'status': instance.status,
      'create_time': instance.create_time,
      'create_user_id': instance.create_user_id,
      'is_login': instance.is_login,
      'is_new': instance.is_new,
      'is_top': instance.is_top,
      'is_hot': instance.is_hot,
      'is_pay': instance.is_pay,
      'isfull_screen': instance.isfull_screen,
      'is_ignore_login': instance.is_ignore_login,
      'cp_code': instance.cp_code,
      'sign_key': instance.sign_key,
      'app_id': instance.app_id,
      'lzu_sign_key': instance.lzu_sign_key,
      'h5_service_url': instance.h5_service_url,
      'app_icon_url': instance.app_icon_url,
      'pc_icon_url': instance.pc_icon_url,
      'unint_name': instance.unint_name,
      'role_str': instance.role_str,
      'terminal_str': instance.terminal_str,
      'terminal_ids': instance.terminal_ids,
      'start_time_str': instance.start_time_str,
      'end_time_str': instance.end_time_str,
      'roles': instance.roles,
      'role_ids': instance.role_ids,
      'terminals': instance.terminals,
      'key_word': instance.key_word,
      'use_system': instance.use_system,
      'first_letter': instance.first_letter,
      'introduce': instance.introduce,
      'condition': instance.condition,
      'need_attention': instance.need_attention,
      'contact_phone': instance.contact_phone,
      'oh_service_id': instance.oh_service_id,
      'object_ids': instance.object_ids,
      'object_ids_str': instance.object_ids_str,
      'pc_show_type': instance.pc_show_type,
      'has_collected': instance.has_collected,
      'fee_scale': instance.fee_scale,
      'fee_scale_str': instance.fee_scale_str,
      'handle_method': instance.handle_method,
      'handle_method_str': instance.handle_method_str,
      'co_organizer': instance.co_organizer,
      'co_organizer_str': instance.co_organizer_str,
      'expected_period': instance.expected_period,
      'expected_period_str': instance.expected_period_str,
      'is_show_detail': instance.is_show_detail,
      'process_img_source': instance.process_img_source,
      'process_img_url': instance.process_img_url,
      'pxyj': instance.pxyj,
      'cjsj': instance.cjsj,
      'use_systems': instance.use_systems,
      'oh_appid': instance.oh_appid,
      'can_consult': instance.can_consult,
      'can_evaluate': instance.can_evaluate,
      'monitor_roleid': instance.monitor_roleid,
      'maintainer_roleid': instance.maintainer_roleid,
    };

_$ServiceResponseImpl _$$ServiceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ServiceInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ServiceResponseImplToJson(
        _$ServiceResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
