// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$XlxxDataImpl _$$XlxxDataImplFromJson(Map<String, dynamic> json) =>
    _$XlxxDataImpl(
      dqrqszzc: json['dqrqszzc'] as String?,
      zzx: json['zzx'] as String?,
      ksrq: json['ksrq'] as String?,
      xqm: json['xqm'] as String?,
      xn: json['xn'] as String?,
      xq: json['xq'] as String?,
    );

Map<String, dynamic> _$$XlxxDataImplToJson(_$XlxxDataImpl instance) =>
    <String, dynamic>{
      'dqrqszzc': instance.dqrqszzc,
      'zzx': instance.zzx,
      'ksrq': instance.ksrq,
      'xqm': instance.xqm,
      'xn': instance.xn,
      'xq': instance.xq,
    };

_$XlxxResponseImpl _$$XlxxResponseImplFromJson(Map<String, dynamic> json) =>
    _$XlxxResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] == null
          ? null
          : XlxxData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$XlxxResponseImplToJson(_$XlxxResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$ScheduleRequestImpl _$$ScheduleRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleRequestImpl(
      zc: (json['zc'] as num).toInt(),
      qsbz: (json['qsbz'] as num).toInt(),
    );

Map<String, dynamic> _$$ScheduleRequestImplToJson(
        _$ScheduleRequestImpl instance) =>
    <String, dynamic>{
      'zc': instance.zc,
      'qsbz': instance.qsbz,
    };

_$CourseInfoImpl _$$CourseInfoImplFromJson(Map<String, dynamic> json) =>
    _$CourseInfoImpl(
      kch: json['kch'] as String?,
      kcmc: json['kcmc'] as String?,
      jsxm: json['jsxm'] as String?,
      jc: json['jc'] as String?,
      skjsl: json['skjsl'] as String?,
      skxql: json['skxql'] as String?,
      week: json['week'] as String?,
      bs: json['bs'] as String?,
      xykh: json['xykh'] as String?,
      xn: json['xn'] as String?,
      xqm: (json['xqm'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      color: json['color'] as String?,
      sksj: json['sksj'] as String?,
      xf: json['xf'] as String?,
      week_fb: json['week_fb'] as String?,
      kcrq: json['kcrq'] as String?,
      create_time: json['create_time'] as String?,
      create_user_id: json['create_user_id'] as String?,
    );

Map<String, dynamic> _$$CourseInfoImplToJson(_$CourseInfoImpl instance) =>
    <String, dynamic>{
      'kch': instance.kch,
      'kcmc': instance.kcmc,
      'jsxm': instance.jsxm,
      'jc': instance.jc,
      'skjsl': instance.skjsl,
      'skxql': instance.skxql,
      'week': instance.week,
      'bs': instance.bs,
      'xykh': instance.xykh,
      'xn': instance.xn,
      'xqm': instance.xqm,
      'status': instance.status,
      'color': instance.color,
      'sksj': instance.sksj,
      'xf': instance.xf,
      'week_fb': instance.week_fb,
      'kcrq': instance.kcrq,
      'create_time': instance.create_time,
      'create_user_id': instance.create_user_id,
    };

_$ScheduleResponseImpl _$$ScheduleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CourseInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScheduleResponseImplToJson(
        _$ScheduleResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$AddScheduleDataImpl _$$AddScheduleDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AddScheduleDataImpl(
      kcmc: json['kcmc'] as String,
      jsxm: json['jsxm'] as String,
      xf: json['xf'] as String,
      color: json['color'] as String,
      xkjsl: json['xkjsl'] as String,
      skxql: json['skxql'] as String,
      week: json['week'] as String,
      week_fb: json['week_fb'] as String,
      jc: json['jc'] as String,
      bs: json['bs'] as String,
      skjc: json['skjc'] as String,
    );

Map<String, dynamic> _$$AddScheduleDataImplToJson(
        _$AddScheduleDataImpl instance) =>
    <String, dynamic>{
      'kcmc': instance.kcmc,
      'jsxm': instance.jsxm,
      'xf': instance.xf,
      'color': instance.color,
      'xkjsl': instance.xkjsl,
      'skxql': instance.skxql,
      'week': instance.week,
      'week_fb': instance.week_fb,
      'jc': instance.jc,
      'bs': instance.bs,
      'skjc': instance.skjc,
    };

_$AddScheduleRequestImpl _$$AddScheduleRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddScheduleRequestImpl(
      kclsit: (json['kclsit'] as List<dynamic>)
          .map((e) => AddScheduleData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AddScheduleRequestImplToJson(
        _$AddScheduleRequestImpl instance) =>
    <String, dynamic>{
      'kclsit': instance.kclsit,
    };

_$AddScheduleResponseImpl _$$AddScheduleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AddScheduleResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$AddScheduleResponseImplToJson(
        _$AddScheduleResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$DelScheduleResponseImpl _$$DelScheduleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$DelScheduleResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$DelScheduleResponseImplToJson(
        _$DelScheduleResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
