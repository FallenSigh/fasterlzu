import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_model.freezed.dart';
part 'schedule_model.g.dart';

@freezed
class XlxxData with _$XlxxData {
  factory XlxxData({
    required String? dqrqszzc, // 当前日期周次
    required String? zzx,     // 总周次
    required String? ksrq,    // 开始日期
    required String? xqm,    // 星期几
    required String? xn,     // 学年
    required String? xq     // 学期
  }) = _XlxxData;

  factory XlxxData.fromJson(Map<String, dynamic> json)
    => _$XlxxDataFromJson(json);
}

@freezed
class XlxxResponse with _$XlxxResponse {
  factory XlxxResponse({
    required int code,
    required String message,
    required XlxxData? data
  }) = _XlxxResponse;

  factory XlxxResponse.fromJson(Map<String, dynamic> json)
  => _$XlxxResponseFromJson(json);
}

@freezed
class ScheduleRequest with _$ScheduleRequest {
  factory ScheduleRequest({
    required int zc,
    required int qsbz
}) = _ScheduleRequest;

  factory ScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleRequestFromJson(json);
}

@freezed
class CourseInfo with _$CourseInfo {
  factory CourseInfo({
    // 详细含义文件末尾
    required String? kch,
    required String? kcmc,
    required String? jsxm,
    required String? jc,
    required String? skjsl,
    required String? skxql,
    required String? week,
    required String? bs,
    required String? xykh,
    required String? xn,
    required int? xqm,
    required int? status,
    required String? color,
    required String? sksj,
    required String? xf,
    required String? week_fb,
    required String? kcrq,
    required String? create_time,
    required String? create_user_id
}) = _CourseInfo;

  factory CourseInfo.fromJson(Map<String, dynamic> json) =>
      _$CourseInfoFromJson(json);
}


@freezed
class ScheduleResponse with _$ScheduleResponse {
  factory ScheduleResponse({
    required int code,
    required String message,
    required List<CourseInfo>? data
}) = _ScheduleResponse;

  factory ScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$ScheduleResponseFromJson(json);
}

@freezed
class AddScheduleData with _$AddScheduleData {
  factory AddScheduleData({
    required String kcmc,
    required String jsxm,
    required String xf,
    required String color,
    required String xkjsl,
    required String skxql,
    required String week,
    required String week_fb,
    required String jc,
    required String bs,
    required String skjc,
}) = _AddScheduleData;

  factory AddScheduleData.fromJson(Map<String, dynamic> json) =>
      _$AddScheduleDataFromJson(json);
}

@freezed
class AddScheduleRequest with _$AddScheduleRequest {
  factory AddScheduleRequest({
    required List<AddScheduleData> kclsit
  }) = _AddScheduleRequest;

  factory AddScheduleRequest.fromJson(Map<String, dynamic> json) =>
    _$AddScheduleRequestFromJson(json);
}

@freezed
class AddScheduleResponse with _$AddScheduleResponse {
  factory AddScheduleResponse({
    required int code,
    required String message,
    required String? data
  }) = _AddScheduleResponse;

  factory AddScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$AddScheduleResponseFromJson(json);
}

@freezed
class DelScheduleResponse with _$DelScheduleResponse{
  factory DelScheduleResponse({
    required int code,
    required String message,
    required String? data
  }) = _DelScheduleResponse;

  factory DelScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$DelScheduleResponseFromJson(json);
}

/*
add schedule样例
data = {
    "kclsit": [
        {
            "kcmc": "课程名称",
            "jsxm": "教师姓名",
            "xf": "1", // 学分
            "color": "rgb(148,255,166,0.74)",
            "skjsl": "上课教室",
            "skxql": "1", // 周几
            "week": "2,4,6,8,10,12,14,16,18,20,22,24",
            "week_fb": "2,4,6,8,10,12,14,16,18,20,22,24",
            "jc": "00000011000000",
            "bs": 1,
            "skjc": "周一，第5节 - 第6节"
        }
    ]
}
 */

/*
{
 课程号       "kch": "105404003",
 课程名称     "kcmc": "通信原理",
 教师姓名     "jsxm": "张冠茂",
 节次        "jc": "11000000000000",
 上课教室     "skjsl": "秦岭堂B404",
 上课星期几  "skxql": "2",
 周次       "week": "1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16",
 班号?       "bs": "2",
 校园卡号     "xykh": "320230941441",
  学年       "xn": "2025",
  学期名     "xqm": 2,
  状态      "status": null,
   颜色    "color": null,
  上课节次   "skjc": "上午12节",
   学分      "xf": "3.5",
          "week_fb": null,
 开课日期    "kcrq": "2025/03/18",
            "create_time": null,
            "create_user_id": null
        },
 */