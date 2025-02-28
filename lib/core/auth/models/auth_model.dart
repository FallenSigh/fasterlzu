import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  factory LoginRequest(
      {required int app_os,
      required String name,
      required String pwd}) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class LoginData with _$LoginData {
  factory LoginData({
    required String? login_token,
    required String? gateway_token,
    required String? reset_pwd_token,
    required String? need_conf_security,
  }) = _LoginData;

  factory LoginData.fromJson(Map<String, dynamic> json) =>
      _$LoginDataFromJson(json);
}

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse(
      {required int code,
      required String message,
      required LoginData? data}) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserImageRequest with _$UserImageRequest {
  factory UserImageRequest(
      {required String loginToken}) = _UserImageRequest;

  factory UserImageRequest.fromJson(Map<String, dynamic> json) =>
      _$UserImageRequestFromJson(json);
}

@freezed
class UserImageData with _$UserImageData {
  factory UserImageData({
    required String? zp,
    required String? xykh,
    required String? rylb,
    required String? zpbbh,
    required String? rn,
  }) = _UserImageData;

  factory UserImageData.fromJson(Map<String, dynamic> json) =>
      _$UserImageDataFromJson(json);
}

@freezed
class UserImageResponse with _$UserImageResponse {
  factory UserImageResponse(
      {required int code,
      required String message,
      required UserImageData? data}) = _UserImageResponse;

  factory UserImageResponse.fromJson(Map<String, dynamic> json) =>
      _$UserImageResponseFromJson(json);
}

@freezed
class UserInfoRequest with _$UserInfoRequest {
  factory UserInfoRequest(
      {required String loginToken}) = _UserInfoRequest;

  factory UserInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$UserInfoRequestFromJson(json);
}

@freezed
class UserInfoData with _$UserInfoData {
  factory UserInfoData({
    required String? xtid,
    required String? rylbm,
    required String? rylb,
    required String? xykh,
    required String? rybh,
    required String? xm,
    required String? xmpy,
    required String? dwh,
    required String? dwmc,
    required String? xbm,
    required String? dqztm,
    required String? dqzt,
    required String? sfzjlxm,
    required String? sfzjh,
    required String? csrq,
    required String? mzm,
    required String? mz,
    required String? zzmmm,
    required String? jxrq,
    required String? gjdqm,
    required String? csdm,
    required String? jg,
    required String? yddh,
    required String? dzxx,
    required String? sfzx,
    required String? sfxj,
    required String? bz,
    required String? zhgxsj,
    required String? xb,
    required String? etong_acc_no,
    required String? wxh,
    required String? nc,
    required String? gxqm,
  }) = _UserInfoData;

  factory UserInfoData.fromJson(Map<String, dynamic> json) =>
      _$UserInfoDataFromJson(json);
}

@freezed
class UserInfoResponse with _$UserInfoResponse {
  factory UserInfoResponse({
    required int code,
    required String message,
    required UserInfoData? data
}) = _UserInfoResponse;

  factory UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserInfoResponseFromJson(json);
}

@freezed
class StringDataResponse with _$StringDataResponse {
  factory StringDataResponse({
    required int code,
    required String message,
    required String? data
  }) = _StringDataResponse;

  factory StringDataResponse.fromJson(Map<String, dynamic> json) =>
      _$StringDataResponseFromJson(json);
}

typedef LogoutResponse = StringDataResponse;
typedef StResponse = StringDataResponse;

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
    required String? process_img_source,
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
class ServiceResponse with _$ServiceResponse {
  factory ServiceResponse({
    required int code,
    required String message,
    required List<ServiceInfo>? data
  }) = _ServiceResponse;

  factory ServiceResponse.fromJson(Map<String, dynamic> json) =>
      _$ServiceResponseFromJson(json);
}