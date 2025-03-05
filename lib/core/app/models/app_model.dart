import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_model.freezed.dart';
part 'app_model.g.dart';

@freezed
class ServiceInfo with _$ServiceInfo {
  factory ServiceInfo({
    required String? service_info_id,
    required String? service_name,
    required String? app_icon,
    required String? pc_icon,
    required String? unint_id,
    required int? app_type,
    required String? service_type,
    required String? service_type_str,
    required String? android_main,
    required String? ios_main,
    required String? h5_url,
    required String? h5_pcurl,
    required String? version_id,
    required int? is_recommend,
    required String? start_time,
    required String? end_time,
    required int? service_sort,
    required int? status,
    required String? create_time,
    required String? create_user_id,
    required int? is_login,
    required int? is_new,
    required int? is_top,
    required int? is_hot,
    required int? is_pay,
    required int? isfull_screen,
    required int? is_ignore_login,
    required String? cp_code,
    required String? sign_key,
    required String? app_id,
    required String? lzu_sign_key,
    required String? h5_service_url,
    required String? app_icon_url,
    required String? pc_icon_url,
    required String? unint_name,
    required String? role_str,
    required String? terminal_str,
    required String? terminal_ids,
    required String? start_time_str,
    required String? end_time_str,
    required String? roles,
    required String? role_ids,
    required String? terminals,
    required String? key_word,
    required String? use_system,
    required String? first_letter,
    required String? introduce,
    required String? condition,
    required String? need_attention,
    required String? contact_phone,
    required String? oh_service_id,
    required String? object_ids,
    required String? object_ids_str,
    required String? pc_show_type,
    required String? has_collected,
    required String? fee_scale,
    required String? fee_scale_str,
    required String? handle_method,
    required String? handle_method_str,
    required String? co_organizer,
    required String? co_organizer_str,
    required String? expected_period,
    required String? expected_period_str,
    required int? is_show_detail,
    required int? process_img_source,
    required String? process_img_url,
    required String? pxyj,
    required String? cjsj,
    required List<String>? use_systems,
    required String? oh_appid,
    required String? can_consult,
    required String? can_evaluate,
    required String? monitor_roleid,
    required String? maintainer_roleid,
  }) = _ServiceInfo;

  factory ServiceInfo.fromJson(Map<String, dynamic> json) =>
      _$ServiceInfoFromJson(json);
}

@freezed
class AppType with _$AppType {
  factory AppType({
    required String? service_type_id,
    required String? service_type_name,
    required String? service_type_icon,
    required String? service_type_icon_url,
    required int? service_type_sort,
    required int? status,
    required String? create_time,
    required String? create_user_id,
    required List<ServiceInfo>? service_infos,
  }) = _AppType;

  factory AppType.fromJson(Map<String, dynamic> json) =>
      _$AppTypeFromJson(json);
}

@freezed
class DetailedAppResponse with _$DetailedAppResponse {
  factory DetailedAppResponse({
    required int code,
    required String message,
    required List<AppType>? data,
  }) = _DetailedAppResponse;

  factory DetailedAppResponse.fromJson(Map<String, dynamic> json) =>
      _$DetailedAppResponseFromJson(json);
}
