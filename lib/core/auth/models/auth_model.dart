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
