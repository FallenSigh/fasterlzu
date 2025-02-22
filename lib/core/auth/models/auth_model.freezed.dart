// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  int get app_os => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pwd => throw _privateConstructorUsedError;

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
          LoginRequest value, $Res Function(LoginRequest) then) =
      _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call({int app_os, String name, String pwd});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_os = null,
    Object? name = null,
    Object? pwd = null,
  }) {
    return _then(_value.copyWith(
      app_os: null == app_os
          ? _value.app_os
          : app_os // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pwd: null == pwd
          ? _value.pwd
          : pwd // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
          _$LoginRequestImpl value, $Res Function(_$LoginRequestImpl) then) =
      __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int app_os, String name, String pwd});
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
      _$LoginRequestImpl _value, $Res Function(_$LoginRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? app_os = null,
    Object? name = null,
    Object? pwd = null,
  }) {
    return _then(_$LoginRequestImpl(
      app_os: null == app_os
          ? _value.app_os
          : app_os // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pwd: null == pwd
          ? _value.pwd
          : pwd // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  _$LoginRequestImpl(
      {required this.app_os, required this.name, required this.pwd});

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  @override
  final int app_os;
  @override
  final String name;
  @override
  final String pwd;

  @override
  String toString() {
    return 'LoginRequest(app_os: $app_os, name: $name, pwd: $pwd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestImpl &&
            (identical(other.app_os, app_os) || other.app_os == app_os) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pwd, pwd) || other.pwd == pwd));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, app_os, name, pwd);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      __$$LoginRequestImplCopyWithImpl<_$LoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(
      this,
    );
  }
}

abstract class _LoginRequest implements LoginRequest {
  factory _LoginRequest(
      {required final int app_os,
      required final String name,
      required final String pwd}) = _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  @override
  int get app_os;
  @override
  String get name;
  @override
  String get pwd;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginData _$LoginDataFromJson(Map<String, dynamic> json) {
  return _LoginData.fromJson(json);
}

/// @nodoc
mixin _$LoginData {
  String? get login_token => throw _privateConstructorUsedError;
  String? get gateway_token => throw _privateConstructorUsedError;
  String? get reset_pwd_token => throw _privateConstructorUsedError;
  String? get need_conf_security => throw _privateConstructorUsedError;

  /// Serializes this LoginData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginDataCopyWith<LoginData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginDataCopyWith<$Res> {
  factory $LoginDataCopyWith(LoginData value, $Res Function(LoginData) then) =
      _$LoginDataCopyWithImpl<$Res, LoginData>;
  @useResult
  $Res call(
      {String? login_token,
      String? gateway_token,
      String? reset_pwd_token,
      String? need_conf_security});
}

/// @nodoc
class _$LoginDataCopyWithImpl<$Res, $Val extends LoginData>
    implements $LoginDataCopyWith<$Res> {
  _$LoginDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login_token = freezed,
    Object? gateway_token = freezed,
    Object? reset_pwd_token = freezed,
    Object? need_conf_security = freezed,
  }) {
    return _then(_value.copyWith(
      login_token: freezed == login_token
          ? _value.login_token
          : login_token // ignore: cast_nullable_to_non_nullable
              as String?,
      gateway_token: freezed == gateway_token
          ? _value.gateway_token
          : gateway_token // ignore: cast_nullable_to_non_nullable
              as String?,
      reset_pwd_token: freezed == reset_pwd_token
          ? _value.reset_pwd_token
          : reset_pwd_token // ignore: cast_nullable_to_non_nullable
              as String?,
      need_conf_security: freezed == need_conf_security
          ? _value.need_conf_security
          : need_conf_security // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
          _$LoginDataImpl value, $Res Function(_$LoginDataImpl) then) =
      __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? login_token,
      String? gateway_token,
      String? reset_pwd_token,
      String? need_conf_security});
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
      _$LoginDataImpl _value, $Res Function(_$LoginDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login_token = freezed,
    Object? gateway_token = freezed,
    Object? reset_pwd_token = freezed,
    Object? need_conf_security = freezed,
  }) {
    return _then(_$LoginDataImpl(
      login_token: freezed == login_token
          ? _value.login_token
          : login_token // ignore: cast_nullable_to_non_nullable
              as String?,
      gateway_token: freezed == gateway_token
          ? _value.gateway_token
          : gateway_token // ignore: cast_nullable_to_non_nullable
              as String?,
      reset_pwd_token: freezed == reset_pwd_token
          ? _value.reset_pwd_token
          : reset_pwd_token // ignore: cast_nullable_to_non_nullable
              as String?,
      need_conf_security: freezed == need_conf_security
          ? _value.need_conf_security
          : need_conf_security // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  _$LoginDataImpl(
      {required this.login_token,
      required this.gateway_token,
      required this.reset_pwd_token,
      required this.need_conf_security});

  factory _$LoginDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginDataImplFromJson(json);

  @override
  final String? login_token;
  @override
  final String? gateway_token;
  @override
  final String? reset_pwd_token;
  @override
  final String? need_conf_security;

  @override
  String toString() {
    return 'LoginData(login_token: $login_token, gateway_token: $gateway_token, reset_pwd_token: $reset_pwd_token, need_conf_security: $need_conf_security)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginDataImpl &&
            (identical(other.login_token, login_token) ||
                other.login_token == login_token) &&
            (identical(other.gateway_token, gateway_token) ||
                other.gateway_token == gateway_token) &&
            (identical(other.reset_pwd_token, reset_pwd_token) ||
                other.reset_pwd_token == reset_pwd_token) &&
            (identical(other.need_conf_security, need_conf_security) ||
                other.need_conf_security == need_conf_security));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, login_token, gateway_token,
      reset_pwd_token, need_conf_security);

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(
      this,
    );
  }
}

abstract class _LoginData implements LoginData {
  factory _LoginData(
      {required final String? login_token,
      required final String? gateway_token,
      required final String? reset_pwd_token,
      required final String? need_conf_security}) = _$LoginDataImpl;

  factory _LoginData.fromJson(Map<String, dynamic> json) =
      _$LoginDataImpl.fromJson;

  @override
  String? get login_token;
  @override
  String? get gateway_token;
  @override
  String? get reset_pwd_token;
  @override
  String? get need_conf_security;

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  LoginData? get data => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({int code, String message, LoginData? data});

  $LoginDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginData?,
    ) as $Val);
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $LoginDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, LoginData? data});

  @override
  $LoginDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$LoginResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LoginData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  _$LoginResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final LoginData? data;

  @override
  String toString() {
    return 'LoginResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  factory _LoginResponse(
      {required final int code,
      required final String message,
      required final LoginData? data}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  LoginData? get data;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserImageRequest _$UserImageRequestFromJson(Map<String, dynamic> json) {
  return _UserImageRequest.fromJson(json);
}

/// @nodoc
mixin _$UserImageRequest {
  String get loginToken => throw _privateConstructorUsedError;

  /// Serializes this UserImageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserImageRequestCopyWith<UserImageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageRequestCopyWith<$Res> {
  factory $UserImageRequestCopyWith(
          UserImageRequest value, $Res Function(UserImageRequest) then) =
      _$UserImageRequestCopyWithImpl<$Res, UserImageRequest>;
  @useResult
  $Res call({String loginToken});
}

/// @nodoc
class _$UserImageRequestCopyWithImpl<$Res, $Val extends UserImageRequest>
    implements $UserImageRequestCopyWith<$Res> {
  _$UserImageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginToken = null,
  }) {
    return _then(_value.copyWith(
      loginToken: null == loginToken
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImageRequestImplCopyWith<$Res>
    implements $UserImageRequestCopyWith<$Res> {
  factory _$$UserImageRequestImplCopyWith(_$UserImageRequestImpl value,
          $Res Function(_$UserImageRequestImpl) then) =
      __$$UserImageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loginToken});
}

/// @nodoc
class __$$UserImageRequestImplCopyWithImpl<$Res>
    extends _$UserImageRequestCopyWithImpl<$Res, _$UserImageRequestImpl>
    implements _$$UserImageRequestImplCopyWith<$Res> {
  __$$UserImageRequestImplCopyWithImpl(_$UserImageRequestImpl _value,
      $Res Function(_$UserImageRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginToken = null,
  }) {
    return _then(_$UserImageRequestImpl(
      loginToken: null == loginToken
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageRequestImpl implements _UserImageRequest {
  _$UserImageRequestImpl({required this.loginToken});

  factory _$UserImageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImageRequestImplFromJson(json);

  @override
  final String loginToken;

  @override
  String toString() {
    return 'UserImageRequest(loginToken: $loginToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImageRequestImpl &&
            (identical(other.loginToken, loginToken) ||
                other.loginToken == loginToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loginToken);

  /// Create a copy of UserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImageRequestImplCopyWith<_$UserImageRequestImpl> get copyWith =>
      __$$UserImageRequestImplCopyWithImpl<_$UserImageRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageRequestImplToJson(
      this,
    );
  }
}

abstract class _UserImageRequest implements UserImageRequest {
  factory _UserImageRequest({required final String loginToken}) =
      _$UserImageRequestImpl;

  factory _UserImageRequest.fromJson(Map<String, dynamic> json) =
      _$UserImageRequestImpl.fromJson;

  @override
  String get loginToken;

  /// Create a copy of UserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImageRequestImplCopyWith<_$UserImageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserImageData _$UserImageDataFromJson(Map<String, dynamic> json) {
  return _UserImageData.fromJson(json);
}

/// @nodoc
mixin _$UserImageData {
  String? get zp => throw _privateConstructorUsedError;
  String? get xykh => throw _privateConstructorUsedError;
  String? get rylb => throw _privateConstructorUsedError;
  String? get zpbbh => throw _privateConstructorUsedError;
  String? get rn => throw _privateConstructorUsedError;

  /// Serializes this UserImageData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserImageDataCopyWith<UserImageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageDataCopyWith<$Res> {
  factory $UserImageDataCopyWith(
          UserImageData value, $Res Function(UserImageData) then) =
      _$UserImageDataCopyWithImpl<$Res, UserImageData>;
  @useResult
  $Res call(
      {String? zp, String? xykh, String? rylb, String? zpbbh, String? rn});
}

/// @nodoc
class _$UserImageDataCopyWithImpl<$Res, $Val extends UserImageData>
    implements $UserImageDataCopyWith<$Res> {
  _$UserImageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zp = freezed,
    Object? xykh = freezed,
    Object? rylb = freezed,
    Object? zpbbh = freezed,
    Object? rn = freezed,
  }) {
    return _then(_value.copyWith(
      zp: freezed == zp
          ? _value.zp
          : zp // ignore: cast_nullable_to_non_nullable
              as String?,
      xykh: freezed == xykh
          ? _value.xykh
          : xykh // ignore: cast_nullable_to_non_nullable
              as String?,
      rylb: freezed == rylb
          ? _value.rylb
          : rylb // ignore: cast_nullable_to_non_nullable
              as String?,
      zpbbh: freezed == zpbbh
          ? _value.zpbbh
          : zpbbh // ignore: cast_nullable_to_non_nullable
              as String?,
      rn: freezed == rn
          ? _value.rn
          : rn // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImageDataImplCopyWith<$Res>
    implements $UserImageDataCopyWith<$Res> {
  factory _$$UserImageDataImplCopyWith(
          _$UserImageDataImpl value, $Res Function(_$UserImageDataImpl) then) =
      __$$UserImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? zp, String? xykh, String? rylb, String? zpbbh, String? rn});
}

/// @nodoc
class __$$UserImageDataImplCopyWithImpl<$Res>
    extends _$UserImageDataCopyWithImpl<$Res, _$UserImageDataImpl>
    implements _$$UserImageDataImplCopyWith<$Res> {
  __$$UserImageDataImplCopyWithImpl(
      _$UserImageDataImpl _value, $Res Function(_$UserImageDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserImageData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zp = freezed,
    Object? xykh = freezed,
    Object? rylb = freezed,
    Object? zpbbh = freezed,
    Object? rn = freezed,
  }) {
    return _then(_$UserImageDataImpl(
      zp: freezed == zp
          ? _value.zp
          : zp // ignore: cast_nullable_to_non_nullable
              as String?,
      xykh: freezed == xykh
          ? _value.xykh
          : xykh // ignore: cast_nullable_to_non_nullable
              as String?,
      rylb: freezed == rylb
          ? _value.rylb
          : rylb // ignore: cast_nullable_to_non_nullable
              as String?,
      zpbbh: freezed == zpbbh
          ? _value.zpbbh
          : zpbbh // ignore: cast_nullable_to_non_nullable
              as String?,
      rn: freezed == rn
          ? _value.rn
          : rn // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageDataImpl implements _UserImageData {
  _$UserImageDataImpl(
      {required this.zp,
      required this.xykh,
      required this.rylb,
      required this.zpbbh,
      required this.rn});

  factory _$UserImageDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImageDataImplFromJson(json);

  @override
  final String? zp;
  @override
  final String? xykh;
  @override
  final String? rylb;
  @override
  final String? zpbbh;
  @override
  final String? rn;

  @override
  String toString() {
    return 'UserImageData(zp: $zp, xykh: $xykh, rylb: $rylb, zpbbh: $zpbbh, rn: $rn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImageDataImpl &&
            (identical(other.zp, zp) || other.zp == zp) &&
            (identical(other.xykh, xykh) || other.xykh == xykh) &&
            (identical(other.rylb, rylb) || other.rylb == rylb) &&
            (identical(other.zpbbh, zpbbh) || other.zpbbh == zpbbh) &&
            (identical(other.rn, rn) || other.rn == rn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, zp, xykh, rylb, zpbbh, rn);

  /// Create a copy of UserImageData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImageDataImplCopyWith<_$UserImageDataImpl> get copyWith =>
      __$$UserImageDataImplCopyWithImpl<_$UserImageDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageDataImplToJson(
      this,
    );
  }
}

abstract class _UserImageData implements UserImageData {
  factory _UserImageData(
      {required final String? zp,
      required final String? xykh,
      required final String? rylb,
      required final String? zpbbh,
      required final String? rn}) = _$UserImageDataImpl;

  factory _UserImageData.fromJson(Map<String, dynamic> json) =
      _$UserImageDataImpl.fromJson;

  @override
  String? get zp;
  @override
  String? get xykh;
  @override
  String? get rylb;
  @override
  String? get zpbbh;
  @override
  String? get rn;

  /// Create a copy of UserImageData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImageDataImplCopyWith<_$UserImageDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserImageResponse _$UserImageResponseFromJson(Map<String, dynamic> json) {
  return _UserImageResponse.fromJson(json);
}

/// @nodoc
mixin _$UserImageResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserImageData? get data => throw _privateConstructorUsedError;

  /// Serializes this UserImageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserImageResponseCopyWith<UserImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserImageResponseCopyWith<$Res> {
  factory $UserImageResponseCopyWith(
          UserImageResponse value, $Res Function(UserImageResponse) then) =
      _$UserImageResponseCopyWithImpl<$Res, UserImageResponse>;
  @useResult
  $Res call({int code, String message, UserImageData? data});

  $UserImageDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserImageResponseCopyWithImpl<$Res, $Val extends UserImageResponse>
    implements $UserImageResponseCopyWith<$Res> {
  _$UserImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserImageData?,
    ) as $Val);
  }

  /// Create a copy of UserImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserImageDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserImageDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImageResponseImplCopyWith<$Res>
    implements $UserImageResponseCopyWith<$Res> {
  factory _$$UserImageResponseImplCopyWith(_$UserImageResponseImpl value,
          $Res Function(_$UserImageResponseImpl) then) =
      __$$UserImageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, UserImageData? data});

  @override
  $UserImageDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserImageResponseImplCopyWithImpl<$Res>
    extends _$UserImageResponseCopyWithImpl<$Res, _$UserImageResponseImpl>
    implements _$$UserImageResponseImplCopyWith<$Res> {
  __$$UserImageResponseImplCopyWithImpl(_$UserImageResponseImpl _value,
      $Res Function(_$UserImageResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$UserImageResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserImageData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageResponseImpl implements _UserImageResponse {
  _$UserImageResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$UserImageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImageResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final UserImageData? data;

  @override
  String toString() {
    return 'UserImageResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImageResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of UserImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImageResponseImplCopyWith<_$UserImageResponseImpl> get copyWith =>
      __$$UserImageResponseImplCopyWithImpl<_$UserImageResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageResponseImplToJson(
      this,
    );
  }
}

abstract class _UserImageResponse implements UserImageResponse {
  factory _UserImageResponse(
      {required final int code,
      required final String message,
      required final UserImageData? data}) = _$UserImageResponseImpl;

  factory _UserImageResponse.fromJson(Map<String, dynamic> json) =
      _$UserImageResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  UserImageData? get data;

  /// Create a copy of UserImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImageResponseImplCopyWith<_$UserImageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoRequest _$UserInfoRequestFromJson(Map<String, dynamic> json) {
  return _UserInfoRequest.fromJson(json);
}

/// @nodoc
mixin _$UserInfoRequest {
  String get loginToken => throw _privateConstructorUsedError;

  /// Serializes this UserInfoRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoRequestCopyWith<UserInfoRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoRequestCopyWith<$Res> {
  factory $UserInfoRequestCopyWith(
          UserInfoRequest value, $Res Function(UserInfoRequest) then) =
      _$UserInfoRequestCopyWithImpl<$Res, UserInfoRequest>;
  @useResult
  $Res call({String loginToken});
}

/// @nodoc
class _$UserInfoRequestCopyWithImpl<$Res, $Val extends UserInfoRequest>
    implements $UserInfoRequestCopyWith<$Res> {
  _$UserInfoRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginToken = null,
  }) {
    return _then(_value.copyWith(
      loginToken: null == loginToken
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoRequestImplCopyWith<$Res>
    implements $UserInfoRequestCopyWith<$Res> {
  factory _$$UserInfoRequestImplCopyWith(_$UserInfoRequestImpl value,
          $Res Function(_$UserInfoRequestImpl) then) =
      __$$UserInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loginToken});
}

/// @nodoc
class __$$UserInfoRequestImplCopyWithImpl<$Res>
    extends _$UserInfoRequestCopyWithImpl<$Res, _$UserInfoRequestImpl>
    implements _$$UserInfoRequestImplCopyWith<$Res> {
  __$$UserInfoRequestImplCopyWithImpl(
      _$UserInfoRequestImpl _value, $Res Function(_$UserInfoRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginToken = null,
  }) {
    return _then(_$UserInfoRequestImpl(
      loginToken: null == loginToken
          ? _value.loginToken
          : loginToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoRequestImpl implements _UserInfoRequest {
  _$UserInfoRequestImpl({required this.loginToken});

  factory _$UserInfoRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoRequestImplFromJson(json);

  @override
  final String loginToken;

  @override
  String toString() {
    return 'UserInfoRequest(loginToken: $loginToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoRequestImpl &&
            (identical(other.loginToken, loginToken) ||
                other.loginToken == loginToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, loginToken);

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoRequestImplCopyWith<_$UserInfoRequestImpl> get copyWith =>
      __$$UserInfoRequestImplCopyWithImpl<_$UserInfoRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoRequestImplToJson(
      this,
    );
  }
}

abstract class _UserInfoRequest implements UserInfoRequest {
  factory _UserInfoRequest({required final String loginToken}) =
      _$UserInfoRequestImpl;

  factory _UserInfoRequest.fromJson(Map<String, dynamic> json) =
      _$UserInfoRequestImpl.fromJson;

  @override
  String get loginToken;

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoRequestImplCopyWith<_$UserInfoRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoData _$UserInfoDataFromJson(Map<String, dynamic> json) {
  return _UserInfoData.fromJson(json);
}

/// @nodoc
mixin _$UserInfoData {
  String? get xtid => throw _privateConstructorUsedError;
  String? get rylbm => throw _privateConstructorUsedError;
  String? get rylb => throw _privateConstructorUsedError;
  String? get xykh => throw _privateConstructorUsedError;
  String? get rybh => throw _privateConstructorUsedError;
  String? get xm => throw _privateConstructorUsedError;
  String? get xmpy => throw _privateConstructorUsedError;
  String? get dwh => throw _privateConstructorUsedError;
  String? get dwmc => throw _privateConstructorUsedError;
  String? get xbm => throw _privateConstructorUsedError;
  String? get dqztm => throw _privateConstructorUsedError;
  String? get dqzt => throw _privateConstructorUsedError;
  String? get sfzjlxm => throw _privateConstructorUsedError;
  String? get sfzjh => throw _privateConstructorUsedError;
  String? get csrq => throw _privateConstructorUsedError;
  String? get mzm => throw _privateConstructorUsedError;
  String? get mz => throw _privateConstructorUsedError;
  String? get zzmmm => throw _privateConstructorUsedError;
  String? get jxrq => throw _privateConstructorUsedError;
  String? get gjdqm => throw _privateConstructorUsedError;
  String? get csdm => throw _privateConstructorUsedError;
  String? get jg => throw _privateConstructorUsedError;
  String? get yddh => throw _privateConstructorUsedError;
  String? get dzxx => throw _privateConstructorUsedError;
  String? get sfzx => throw _privateConstructorUsedError;
  String? get sfxj => throw _privateConstructorUsedError;
  String? get bz => throw _privateConstructorUsedError;
  String? get zhgxsj => throw _privateConstructorUsedError;
  String? get xb => throw _privateConstructorUsedError;
  String? get etong_acc_no => throw _privateConstructorUsedError;
  String? get wxh => throw _privateConstructorUsedError;
  String? get nc => throw _privateConstructorUsedError;
  String? get gxqm => throw _privateConstructorUsedError;

  /// Serializes this UserInfoData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoDataCopyWith<UserInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDataCopyWith<$Res> {
  factory $UserInfoDataCopyWith(
          UserInfoData value, $Res Function(UserInfoData) then) =
      _$UserInfoDataCopyWithImpl<$Res, UserInfoData>;
  @useResult
  $Res call(
      {String? xtid,
      String? rylbm,
      String? rylb,
      String? xykh,
      String? rybh,
      String? xm,
      String? xmpy,
      String? dwh,
      String? dwmc,
      String? xbm,
      String? dqztm,
      String? dqzt,
      String? sfzjlxm,
      String? sfzjh,
      String? csrq,
      String? mzm,
      String? mz,
      String? zzmmm,
      String? jxrq,
      String? gjdqm,
      String? csdm,
      String? jg,
      String? yddh,
      String? dzxx,
      String? sfzx,
      String? sfxj,
      String? bz,
      String? zhgxsj,
      String? xb,
      String? etong_acc_no,
      String? wxh,
      String? nc,
      String? gxqm});
}

/// @nodoc
class _$UserInfoDataCopyWithImpl<$Res, $Val extends UserInfoData>
    implements $UserInfoDataCopyWith<$Res> {
  _$UserInfoDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xtid = freezed,
    Object? rylbm = freezed,
    Object? rylb = freezed,
    Object? xykh = freezed,
    Object? rybh = freezed,
    Object? xm = freezed,
    Object? xmpy = freezed,
    Object? dwh = freezed,
    Object? dwmc = freezed,
    Object? xbm = freezed,
    Object? dqztm = freezed,
    Object? dqzt = freezed,
    Object? sfzjlxm = freezed,
    Object? sfzjh = freezed,
    Object? csrq = freezed,
    Object? mzm = freezed,
    Object? mz = freezed,
    Object? zzmmm = freezed,
    Object? jxrq = freezed,
    Object? gjdqm = freezed,
    Object? csdm = freezed,
    Object? jg = freezed,
    Object? yddh = freezed,
    Object? dzxx = freezed,
    Object? sfzx = freezed,
    Object? sfxj = freezed,
    Object? bz = freezed,
    Object? zhgxsj = freezed,
    Object? xb = freezed,
    Object? etong_acc_no = freezed,
    Object? wxh = freezed,
    Object? nc = freezed,
    Object? gxqm = freezed,
  }) {
    return _then(_value.copyWith(
      xtid: freezed == xtid
          ? _value.xtid
          : xtid // ignore: cast_nullable_to_non_nullable
              as String?,
      rylbm: freezed == rylbm
          ? _value.rylbm
          : rylbm // ignore: cast_nullable_to_non_nullable
              as String?,
      rylb: freezed == rylb
          ? _value.rylb
          : rylb // ignore: cast_nullable_to_non_nullable
              as String?,
      xykh: freezed == xykh
          ? _value.xykh
          : xykh // ignore: cast_nullable_to_non_nullable
              as String?,
      rybh: freezed == rybh
          ? _value.rybh
          : rybh // ignore: cast_nullable_to_non_nullable
              as String?,
      xm: freezed == xm
          ? _value.xm
          : xm // ignore: cast_nullable_to_non_nullable
              as String?,
      xmpy: freezed == xmpy
          ? _value.xmpy
          : xmpy // ignore: cast_nullable_to_non_nullable
              as String?,
      dwh: freezed == dwh
          ? _value.dwh
          : dwh // ignore: cast_nullable_to_non_nullable
              as String?,
      dwmc: freezed == dwmc
          ? _value.dwmc
          : dwmc // ignore: cast_nullable_to_non_nullable
              as String?,
      xbm: freezed == xbm
          ? _value.xbm
          : xbm // ignore: cast_nullable_to_non_nullable
              as String?,
      dqztm: freezed == dqztm
          ? _value.dqztm
          : dqztm // ignore: cast_nullable_to_non_nullable
              as String?,
      dqzt: freezed == dqzt
          ? _value.dqzt
          : dqzt // ignore: cast_nullable_to_non_nullable
              as String?,
      sfzjlxm: freezed == sfzjlxm
          ? _value.sfzjlxm
          : sfzjlxm // ignore: cast_nullable_to_non_nullable
              as String?,
      sfzjh: freezed == sfzjh
          ? _value.sfzjh
          : sfzjh // ignore: cast_nullable_to_non_nullable
              as String?,
      csrq: freezed == csrq
          ? _value.csrq
          : csrq // ignore: cast_nullable_to_non_nullable
              as String?,
      mzm: freezed == mzm
          ? _value.mzm
          : mzm // ignore: cast_nullable_to_non_nullable
              as String?,
      mz: freezed == mz
          ? _value.mz
          : mz // ignore: cast_nullable_to_non_nullable
              as String?,
      zzmmm: freezed == zzmmm
          ? _value.zzmmm
          : zzmmm // ignore: cast_nullable_to_non_nullable
              as String?,
      jxrq: freezed == jxrq
          ? _value.jxrq
          : jxrq // ignore: cast_nullable_to_non_nullable
              as String?,
      gjdqm: freezed == gjdqm
          ? _value.gjdqm
          : gjdqm // ignore: cast_nullable_to_non_nullable
              as String?,
      csdm: freezed == csdm
          ? _value.csdm
          : csdm // ignore: cast_nullable_to_non_nullable
              as String?,
      jg: freezed == jg
          ? _value.jg
          : jg // ignore: cast_nullable_to_non_nullable
              as String?,
      yddh: freezed == yddh
          ? _value.yddh
          : yddh // ignore: cast_nullable_to_non_nullable
              as String?,
      dzxx: freezed == dzxx
          ? _value.dzxx
          : dzxx // ignore: cast_nullable_to_non_nullable
              as String?,
      sfzx: freezed == sfzx
          ? _value.sfzx
          : sfzx // ignore: cast_nullable_to_non_nullable
              as String?,
      sfxj: freezed == sfxj
          ? _value.sfxj
          : sfxj // ignore: cast_nullable_to_non_nullable
              as String?,
      bz: freezed == bz
          ? _value.bz
          : bz // ignore: cast_nullable_to_non_nullable
              as String?,
      zhgxsj: freezed == zhgxsj
          ? _value.zhgxsj
          : zhgxsj // ignore: cast_nullable_to_non_nullable
              as String?,
      xb: freezed == xb
          ? _value.xb
          : xb // ignore: cast_nullable_to_non_nullable
              as String?,
      etong_acc_no: freezed == etong_acc_no
          ? _value.etong_acc_no
          : etong_acc_no // ignore: cast_nullable_to_non_nullable
              as String?,
      wxh: freezed == wxh
          ? _value.wxh
          : wxh // ignore: cast_nullable_to_non_nullable
              as String?,
      nc: freezed == nc
          ? _value.nc
          : nc // ignore: cast_nullable_to_non_nullable
              as String?,
      gxqm: freezed == gxqm
          ? _value.gxqm
          : gxqm // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoDataImplCopyWith<$Res>
    implements $UserInfoDataCopyWith<$Res> {
  factory _$$UserInfoDataImplCopyWith(
          _$UserInfoDataImpl value, $Res Function(_$UserInfoDataImpl) then) =
      __$$UserInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? xtid,
      String? rylbm,
      String? rylb,
      String? xykh,
      String? rybh,
      String? xm,
      String? xmpy,
      String? dwh,
      String? dwmc,
      String? xbm,
      String? dqztm,
      String? dqzt,
      String? sfzjlxm,
      String? sfzjh,
      String? csrq,
      String? mzm,
      String? mz,
      String? zzmmm,
      String? jxrq,
      String? gjdqm,
      String? csdm,
      String? jg,
      String? yddh,
      String? dzxx,
      String? sfzx,
      String? sfxj,
      String? bz,
      String? zhgxsj,
      String? xb,
      String? etong_acc_no,
      String? wxh,
      String? nc,
      String? gxqm});
}

/// @nodoc
class __$$UserInfoDataImplCopyWithImpl<$Res>
    extends _$UserInfoDataCopyWithImpl<$Res, _$UserInfoDataImpl>
    implements _$$UserInfoDataImplCopyWith<$Res> {
  __$$UserInfoDataImplCopyWithImpl(
      _$UserInfoDataImpl _value, $Res Function(_$UserInfoDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? xtid = freezed,
    Object? rylbm = freezed,
    Object? rylb = freezed,
    Object? xykh = freezed,
    Object? rybh = freezed,
    Object? xm = freezed,
    Object? xmpy = freezed,
    Object? dwh = freezed,
    Object? dwmc = freezed,
    Object? xbm = freezed,
    Object? dqztm = freezed,
    Object? dqzt = freezed,
    Object? sfzjlxm = freezed,
    Object? sfzjh = freezed,
    Object? csrq = freezed,
    Object? mzm = freezed,
    Object? mz = freezed,
    Object? zzmmm = freezed,
    Object? jxrq = freezed,
    Object? gjdqm = freezed,
    Object? csdm = freezed,
    Object? jg = freezed,
    Object? yddh = freezed,
    Object? dzxx = freezed,
    Object? sfzx = freezed,
    Object? sfxj = freezed,
    Object? bz = freezed,
    Object? zhgxsj = freezed,
    Object? xb = freezed,
    Object? etong_acc_no = freezed,
    Object? wxh = freezed,
    Object? nc = freezed,
    Object? gxqm = freezed,
  }) {
    return _then(_$UserInfoDataImpl(
      xtid: freezed == xtid
          ? _value.xtid
          : xtid // ignore: cast_nullable_to_non_nullable
              as String?,
      rylbm: freezed == rylbm
          ? _value.rylbm
          : rylbm // ignore: cast_nullable_to_non_nullable
              as String?,
      rylb: freezed == rylb
          ? _value.rylb
          : rylb // ignore: cast_nullable_to_non_nullable
              as String?,
      xykh: freezed == xykh
          ? _value.xykh
          : xykh // ignore: cast_nullable_to_non_nullable
              as String?,
      rybh: freezed == rybh
          ? _value.rybh
          : rybh // ignore: cast_nullable_to_non_nullable
              as String?,
      xm: freezed == xm
          ? _value.xm
          : xm // ignore: cast_nullable_to_non_nullable
              as String?,
      xmpy: freezed == xmpy
          ? _value.xmpy
          : xmpy // ignore: cast_nullable_to_non_nullable
              as String?,
      dwh: freezed == dwh
          ? _value.dwh
          : dwh // ignore: cast_nullable_to_non_nullable
              as String?,
      dwmc: freezed == dwmc
          ? _value.dwmc
          : dwmc // ignore: cast_nullable_to_non_nullable
              as String?,
      xbm: freezed == xbm
          ? _value.xbm
          : xbm // ignore: cast_nullable_to_non_nullable
              as String?,
      dqztm: freezed == dqztm
          ? _value.dqztm
          : dqztm // ignore: cast_nullable_to_non_nullable
              as String?,
      dqzt: freezed == dqzt
          ? _value.dqzt
          : dqzt // ignore: cast_nullable_to_non_nullable
              as String?,
      sfzjlxm: freezed == sfzjlxm
          ? _value.sfzjlxm
          : sfzjlxm // ignore: cast_nullable_to_non_nullable
              as String?,
      sfzjh: freezed == sfzjh
          ? _value.sfzjh
          : sfzjh // ignore: cast_nullable_to_non_nullable
              as String?,
      csrq: freezed == csrq
          ? _value.csrq
          : csrq // ignore: cast_nullable_to_non_nullable
              as String?,
      mzm: freezed == mzm
          ? _value.mzm
          : mzm // ignore: cast_nullable_to_non_nullable
              as String?,
      mz: freezed == mz
          ? _value.mz
          : mz // ignore: cast_nullable_to_non_nullable
              as String?,
      zzmmm: freezed == zzmmm
          ? _value.zzmmm
          : zzmmm // ignore: cast_nullable_to_non_nullable
              as String?,
      jxrq: freezed == jxrq
          ? _value.jxrq
          : jxrq // ignore: cast_nullable_to_non_nullable
              as String?,
      gjdqm: freezed == gjdqm
          ? _value.gjdqm
          : gjdqm // ignore: cast_nullable_to_non_nullable
              as String?,
      csdm: freezed == csdm
          ? _value.csdm
          : csdm // ignore: cast_nullable_to_non_nullable
              as String?,
      jg: freezed == jg
          ? _value.jg
          : jg // ignore: cast_nullable_to_non_nullable
              as String?,
      yddh: freezed == yddh
          ? _value.yddh
          : yddh // ignore: cast_nullable_to_non_nullable
              as String?,
      dzxx: freezed == dzxx
          ? _value.dzxx
          : dzxx // ignore: cast_nullable_to_non_nullable
              as String?,
      sfzx: freezed == sfzx
          ? _value.sfzx
          : sfzx // ignore: cast_nullable_to_non_nullable
              as String?,
      sfxj: freezed == sfxj
          ? _value.sfxj
          : sfxj // ignore: cast_nullable_to_non_nullable
              as String?,
      bz: freezed == bz
          ? _value.bz
          : bz // ignore: cast_nullable_to_non_nullable
              as String?,
      zhgxsj: freezed == zhgxsj
          ? _value.zhgxsj
          : zhgxsj // ignore: cast_nullable_to_non_nullable
              as String?,
      xb: freezed == xb
          ? _value.xb
          : xb // ignore: cast_nullable_to_non_nullable
              as String?,
      etong_acc_no: freezed == etong_acc_no
          ? _value.etong_acc_no
          : etong_acc_no // ignore: cast_nullable_to_non_nullable
              as String?,
      wxh: freezed == wxh
          ? _value.wxh
          : wxh // ignore: cast_nullable_to_non_nullable
              as String?,
      nc: freezed == nc
          ? _value.nc
          : nc // ignore: cast_nullable_to_non_nullable
              as String?,
      gxqm: freezed == gxqm
          ? _value.gxqm
          : gxqm // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoDataImpl implements _UserInfoData {
  _$UserInfoDataImpl(
      {required this.xtid,
      required this.rylbm,
      required this.rylb,
      required this.xykh,
      required this.rybh,
      required this.xm,
      required this.xmpy,
      required this.dwh,
      required this.dwmc,
      required this.xbm,
      required this.dqztm,
      required this.dqzt,
      required this.sfzjlxm,
      required this.sfzjh,
      required this.csrq,
      required this.mzm,
      required this.mz,
      required this.zzmmm,
      required this.jxrq,
      required this.gjdqm,
      required this.csdm,
      required this.jg,
      required this.yddh,
      required this.dzxx,
      required this.sfzx,
      required this.sfxj,
      required this.bz,
      required this.zhgxsj,
      required this.xb,
      required this.etong_acc_no,
      required this.wxh,
      required this.nc,
      required this.gxqm});

  factory _$UserInfoDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoDataImplFromJson(json);

  @override
  final String? xtid;
  @override
  final String? rylbm;
  @override
  final String? rylb;
  @override
  final String? xykh;
  @override
  final String? rybh;
  @override
  final String? xm;
  @override
  final String? xmpy;
  @override
  final String? dwh;
  @override
  final String? dwmc;
  @override
  final String? xbm;
  @override
  final String? dqztm;
  @override
  final String? dqzt;
  @override
  final String? sfzjlxm;
  @override
  final String? sfzjh;
  @override
  final String? csrq;
  @override
  final String? mzm;
  @override
  final String? mz;
  @override
  final String? zzmmm;
  @override
  final String? jxrq;
  @override
  final String? gjdqm;
  @override
  final String? csdm;
  @override
  final String? jg;
  @override
  final String? yddh;
  @override
  final String? dzxx;
  @override
  final String? sfzx;
  @override
  final String? sfxj;
  @override
  final String? bz;
  @override
  final String? zhgxsj;
  @override
  final String? xb;
  @override
  final String? etong_acc_no;
  @override
  final String? wxh;
  @override
  final String? nc;
  @override
  final String? gxqm;

  @override
  String toString() {
    return 'UserInfoData(xtid: $xtid, rylbm: $rylbm, rylb: $rylb, xykh: $xykh, rybh: $rybh, xm: $xm, xmpy: $xmpy, dwh: $dwh, dwmc: $dwmc, xbm: $xbm, dqztm: $dqztm, dqzt: $dqzt, sfzjlxm: $sfzjlxm, sfzjh: $sfzjh, csrq: $csrq, mzm: $mzm, mz: $mz, zzmmm: $zzmmm, jxrq: $jxrq, gjdqm: $gjdqm, csdm: $csdm, jg: $jg, yddh: $yddh, dzxx: $dzxx, sfzx: $sfzx, sfxj: $sfxj, bz: $bz, zhgxsj: $zhgxsj, xb: $xb, etong_acc_no: $etong_acc_no, wxh: $wxh, nc: $nc, gxqm: $gxqm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoDataImpl &&
            (identical(other.xtid, xtid) || other.xtid == xtid) &&
            (identical(other.rylbm, rylbm) || other.rylbm == rylbm) &&
            (identical(other.rylb, rylb) || other.rylb == rylb) &&
            (identical(other.xykh, xykh) || other.xykh == xykh) &&
            (identical(other.rybh, rybh) || other.rybh == rybh) &&
            (identical(other.xm, xm) || other.xm == xm) &&
            (identical(other.xmpy, xmpy) || other.xmpy == xmpy) &&
            (identical(other.dwh, dwh) || other.dwh == dwh) &&
            (identical(other.dwmc, dwmc) || other.dwmc == dwmc) &&
            (identical(other.xbm, xbm) || other.xbm == xbm) &&
            (identical(other.dqztm, dqztm) || other.dqztm == dqztm) &&
            (identical(other.dqzt, dqzt) || other.dqzt == dqzt) &&
            (identical(other.sfzjlxm, sfzjlxm) || other.sfzjlxm == sfzjlxm) &&
            (identical(other.sfzjh, sfzjh) || other.sfzjh == sfzjh) &&
            (identical(other.csrq, csrq) || other.csrq == csrq) &&
            (identical(other.mzm, mzm) || other.mzm == mzm) &&
            (identical(other.mz, mz) || other.mz == mz) &&
            (identical(other.zzmmm, zzmmm) || other.zzmmm == zzmmm) &&
            (identical(other.jxrq, jxrq) || other.jxrq == jxrq) &&
            (identical(other.gjdqm, gjdqm) || other.gjdqm == gjdqm) &&
            (identical(other.csdm, csdm) || other.csdm == csdm) &&
            (identical(other.jg, jg) || other.jg == jg) &&
            (identical(other.yddh, yddh) || other.yddh == yddh) &&
            (identical(other.dzxx, dzxx) || other.dzxx == dzxx) &&
            (identical(other.sfzx, sfzx) || other.sfzx == sfzx) &&
            (identical(other.sfxj, sfxj) || other.sfxj == sfxj) &&
            (identical(other.bz, bz) || other.bz == bz) &&
            (identical(other.zhgxsj, zhgxsj) || other.zhgxsj == zhgxsj) &&
            (identical(other.xb, xb) || other.xb == xb) &&
            (identical(other.etong_acc_no, etong_acc_no) ||
                other.etong_acc_no == etong_acc_no) &&
            (identical(other.wxh, wxh) || other.wxh == wxh) &&
            (identical(other.nc, nc) || other.nc == nc) &&
            (identical(other.gxqm, gxqm) || other.gxqm == gxqm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        xtid,
        rylbm,
        rylb,
        xykh,
        rybh,
        xm,
        xmpy,
        dwh,
        dwmc,
        xbm,
        dqztm,
        dqzt,
        sfzjlxm,
        sfzjh,
        csrq,
        mzm,
        mz,
        zzmmm,
        jxrq,
        gjdqm,
        csdm,
        jg,
        yddh,
        dzxx,
        sfzx,
        sfxj,
        bz,
        zhgxsj,
        xb,
        etong_acc_no,
        wxh,
        nc,
        gxqm
      ]);

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoDataImplCopyWith<_$UserInfoDataImpl> get copyWith =>
      __$$UserInfoDataImplCopyWithImpl<_$UserInfoDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoDataImplToJson(
      this,
    );
  }
}

abstract class _UserInfoData implements UserInfoData {
  factory _UserInfoData(
      {required final String? xtid,
      required final String? rylbm,
      required final String? rylb,
      required final String? xykh,
      required final String? rybh,
      required final String? xm,
      required final String? xmpy,
      required final String? dwh,
      required final String? dwmc,
      required final String? xbm,
      required final String? dqztm,
      required final String? dqzt,
      required final String? sfzjlxm,
      required final String? sfzjh,
      required final String? csrq,
      required final String? mzm,
      required final String? mz,
      required final String? zzmmm,
      required final String? jxrq,
      required final String? gjdqm,
      required final String? csdm,
      required final String? jg,
      required final String? yddh,
      required final String? dzxx,
      required final String? sfzx,
      required final String? sfxj,
      required final String? bz,
      required final String? zhgxsj,
      required final String? xb,
      required final String? etong_acc_no,
      required final String? wxh,
      required final String? nc,
      required final String? gxqm}) = _$UserInfoDataImpl;

  factory _UserInfoData.fromJson(Map<String, dynamic> json) =
      _$UserInfoDataImpl.fromJson;

  @override
  String? get xtid;
  @override
  String? get rylbm;
  @override
  String? get rylb;
  @override
  String? get xykh;
  @override
  String? get rybh;
  @override
  String? get xm;
  @override
  String? get xmpy;
  @override
  String? get dwh;
  @override
  String? get dwmc;
  @override
  String? get xbm;
  @override
  String? get dqztm;
  @override
  String? get dqzt;
  @override
  String? get sfzjlxm;
  @override
  String? get sfzjh;
  @override
  String? get csrq;
  @override
  String? get mzm;
  @override
  String? get mz;
  @override
  String? get zzmmm;
  @override
  String? get jxrq;
  @override
  String? get gjdqm;
  @override
  String? get csdm;
  @override
  String? get jg;
  @override
  String? get yddh;
  @override
  String? get dzxx;
  @override
  String? get sfzx;
  @override
  String? get sfxj;
  @override
  String? get bz;
  @override
  String? get zhgxsj;
  @override
  String? get xb;
  @override
  String? get etong_acc_no;
  @override
  String? get wxh;
  @override
  String? get nc;
  @override
  String? get gxqm;

  /// Create a copy of UserInfoData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoDataImplCopyWith<_$UserInfoDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoResponse _$UserInfoResponseFromJson(Map<String, dynamic> json) {
  return _UserInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$UserInfoResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  UserInfoData? get data => throw _privateConstructorUsedError;

  /// Serializes this UserInfoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserInfoResponseCopyWith<UserInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoResponseCopyWith<$Res> {
  factory $UserInfoResponseCopyWith(
          UserInfoResponse value, $Res Function(UserInfoResponse) then) =
      _$UserInfoResponseCopyWithImpl<$Res, UserInfoResponse>;
  @useResult
  $Res call({int code, String message, UserInfoData? data});

  $UserInfoDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserInfoResponseCopyWithImpl<$Res, $Val extends UserInfoResponse>
    implements $UserInfoResponseCopyWith<$Res> {
  _$UserInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserInfoData?,
    ) as $Val);
  }

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserInfoDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserInfoDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoResponseImplCopyWith<$Res>
    implements $UserInfoResponseCopyWith<$Res> {
  factory _$$UserInfoResponseImplCopyWith(_$UserInfoResponseImpl value,
          $Res Function(_$UserInfoResponseImpl) then) =
      __$$UserInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, UserInfoData? data});

  @override
  $UserInfoDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserInfoResponseImplCopyWithImpl<$Res>
    extends _$UserInfoResponseCopyWithImpl<$Res, _$UserInfoResponseImpl>
    implements _$$UserInfoResponseImplCopyWith<$Res> {
  __$$UserInfoResponseImplCopyWithImpl(_$UserInfoResponseImpl _value,
      $Res Function(_$UserInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$UserInfoResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserInfoData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoResponseImpl implements _UserInfoResponse {
  _$UserInfoResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$UserInfoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final UserInfoData? data;

  @override
  String toString() {
    return 'UserInfoResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoResponseImplCopyWith<_$UserInfoResponseImpl> get copyWith =>
      __$$UserInfoResponseImplCopyWithImpl<_$UserInfoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoResponseImplToJson(
      this,
    );
  }
}

abstract class _UserInfoResponse implements UserInfoResponse {
  factory _UserInfoResponse(
      {required final int code,
      required final String message,
      required final UserInfoData? data}) = _$UserInfoResponseImpl;

  factory _UserInfoResponse.fromJson(Map<String, dynamic> json) =
      _$UserInfoResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  UserInfoData? get data;

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserInfoResponseImplCopyWith<_$UserInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StringDataResponse _$StringDataResponseFromJson(Map<String, dynamic> json) {
  return _StringDataResponse.fromJson(json);
}

/// @nodoc
mixin _$StringDataResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String? get data => throw _privateConstructorUsedError;

  /// Serializes this StringDataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StringDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StringDataResponseCopyWith<StringDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StringDataResponseCopyWith<$Res> {
  factory $StringDataResponseCopyWith(
          StringDataResponse value, $Res Function(StringDataResponse) then) =
      _$StringDataResponseCopyWithImpl<$Res, StringDataResponse>;
  @useResult
  $Res call({int code, String message, String? data});
}

/// @nodoc
class _$StringDataResponseCopyWithImpl<$Res, $Val extends StringDataResponse>
    implements $StringDataResponseCopyWith<$Res> {
  _$StringDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StringDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StringDataResponseImplCopyWith<$Res>
    implements $StringDataResponseCopyWith<$Res> {
  factory _$$StringDataResponseImplCopyWith(_$StringDataResponseImpl value,
          $Res Function(_$StringDataResponseImpl) then) =
      __$$StringDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, String? data});
}

/// @nodoc
class __$$StringDataResponseImplCopyWithImpl<$Res>
    extends _$StringDataResponseCopyWithImpl<$Res, _$StringDataResponseImpl>
    implements _$$StringDataResponseImplCopyWith<$Res> {
  __$$StringDataResponseImplCopyWithImpl(_$StringDataResponseImpl _value,
      $Res Function(_$StringDataResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of StringDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$StringDataResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StringDataResponseImpl implements _StringDataResponse {
  _$StringDataResponseImpl(
      {required this.code, required this.message, required this.data});

  factory _$StringDataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$StringDataResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final String? data;

  @override
  String toString() {
    return 'StringDataResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringDataResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  /// Create a copy of StringDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StringDataResponseImplCopyWith<_$StringDataResponseImpl> get copyWith =>
      __$$StringDataResponseImplCopyWithImpl<_$StringDataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StringDataResponseImplToJson(
      this,
    );
  }
}

abstract class _StringDataResponse implements StringDataResponse {
  factory _StringDataResponse(
      {required final int code,
      required final String message,
      required final String? data}) = _$StringDataResponseImpl;

  factory _StringDataResponse.fromJson(Map<String, dynamic> json) =
      _$StringDataResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  String? get data;

  /// Create a copy of StringDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StringDataResponseImplCopyWith<_$StringDataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceInfo _$ServiceInfoFromJson(Map<String, dynamic> json) {
  return _ServiceInfo.fromJson(json);
}

/// @nodoc
mixin _$ServiceInfo {
  String? get service_info_id => throw _privateConstructorUsedError;
  String? get service_name => throw _privateConstructorUsedError;
  String? get app_icon => throw _privateConstructorUsedError;
  String? get pc_icon => throw _privateConstructorUsedError;
  String? get unint_id => throw _privateConstructorUsedError;
  int? get app_type => throw _privateConstructorUsedError;
  String? get service_type => throw _privateConstructorUsedError;
  String? get service_type_str => throw _privateConstructorUsedError;
  String? get android_main => throw _privateConstructorUsedError;
  String? get ios_main => throw _privateConstructorUsedError;
  String? get h5_url => throw _privateConstructorUsedError;
  String? get h5_pcurl => throw _privateConstructorUsedError;
  String? get version_id => throw _privateConstructorUsedError;
  int? get is_recommend => throw _privateConstructorUsedError;
  String? get start_time => throw _privateConstructorUsedError;
  String? get end_time => throw _privateConstructorUsedError;
  int? get service_sort => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  String? get create_time => throw _privateConstructorUsedError;
  String? get create_user_id => throw _privateConstructorUsedError;
  int? get is_login => throw _privateConstructorUsedError;
  int? get is_new => throw _privateConstructorUsedError;
  int? get is_top => throw _privateConstructorUsedError;
  int? get is_hot => throw _privateConstructorUsedError;
  int? get is_pay => throw _privateConstructorUsedError;
  int? get isfull_screen => throw _privateConstructorUsedError;
  int? get is_ignore_login => throw _privateConstructorUsedError;
  String? get cp_code => throw _privateConstructorUsedError;
  String? get sign_key => throw _privateConstructorUsedError;
  String? get app_id => throw _privateConstructorUsedError;
  String? get lzu_sign_key => throw _privateConstructorUsedError;
  String? get h5_service_url => throw _privateConstructorUsedError;
  String? get app_icon_url => throw _privateConstructorUsedError;
  String? get pc_icon_url => throw _privateConstructorUsedError;
  String? get unint_name => throw _privateConstructorUsedError;
  String? get role_str => throw _privateConstructorUsedError;
  String? get terminal_str => throw _privateConstructorUsedError;
  String? get terminal_ids => throw _privateConstructorUsedError;
  String? get start_time_str => throw _privateConstructorUsedError;
  String? get end_time_str => throw _privateConstructorUsedError;
  String? get roles => throw _privateConstructorUsedError;
  String? get role_ids => throw _privateConstructorUsedError;
  String? get terminals => throw _privateConstructorUsedError;
  String? get key_word => throw _privateConstructorUsedError;
  String? get use_system => throw _privateConstructorUsedError;
  String? get first_letter => throw _privateConstructorUsedError;
  String? get introduce => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get need_attention => throw _privateConstructorUsedError;
  String? get contact_phone => throw _privateConstructorUsedError;
  String? get oh_service_id => throw _privateConstructorUsedError;
  String? get object_ids => throw _privateConstructorUsedError;
  String? get object_ids_str => throw _privateConstructorUsedError;
  String? get pc_show_type => throw _privateConstructorUsedError;
  String? get has_collected => throw _privateConstructorUsedError;
  String? get fee_scale => throw _privateConstructorUsedError;
  String? get fee_scale_str => throw _privateConstructorUsedError;
  String? get handle_method => throw _privateConstructorUsedError;
  String? get handle_method_str => throw _privateConstructorUsedError;
  String? get co_organizer => throw _privateConstructorUsedError;
  String? get co_organizer_str => throw _privateConstructorUsedError;
  String? get expected_period => throw _privateConstructorUsedError;
  String? get expected_period_str => throw _privateConstructorUsedError;
  int? get is_show_detail => throw _privateConstructorUsedError;
  String? get process_img_source => throw _privateConstructorUsedError;
  String? get process_img_url => throw _privateConstructorUsedError;
  String? get pxyj => throw _privateConstructorUsedError;
  String? get cjsj => throw _privateConstructorUsedError;
  List<String>? get use_systems => throw _privateConstructorUsedError;
  String? get oh_appid => throw _privateConstructorUsedError;
  String? get can_consult => throw _privateConstructorUsedError;
  String? get can_evaluate => throw _privateConstructorUsedError;
  String? get monitor_roleid => throw _privateConstructorUsedError;
  String? get maintainer_roleid => throw _privateConstructorUsedError;

  /// Serializes this ServiceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceInfoCopyWith<ServiceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceInfoCopyWith<$Res> {
  factory $ServiceInfoCopyWith(
          ServiceInfo value, $Res Function(ServiceInfo) then) =
      _$ServiceInfoCopyWithImpl<$Res, ServiceInfo>;
  @useResult
  $Res call(
      {String? service_info_id,
      String? service_name,
      String? app_icon,
      String? pc_icon,
      String? unint_id,
      int? app_type,
      String? service_type,
      String? service_type_str,
      String? android_main,
      String? ios_main,
      String? h5_url,
      String? h5_pcurl,
      String? version_id,
      int? is_recommend,
      String? start_time,
      String? end_time,
      int? service_sort,
      int? status,
      String? create_time,
      String? create_user_id,
      int? is_login,
      int? is_new,
      int? is_top,
      int? is_hot,
      int? is_pay,
      int? isfull_screen,
      int? is_ignore_login,
      String? cp_code,
      String? sign_key,
      String? app_id,
      String? lzu_sign_key,
      String? h5_service_url,
      String? app_icon_url,
      String? pc_icon_url,
      String? unint_name,
      String? role_str,
      String? terminal_str,
      String? terminal_ids,
      String? start_time_str,
      String? end_time_str,
      String? roles,
      String? role_ids,
      String? terminals,
      String? key_word,
      String? use_system,
      String? first_letter,
      String? introduce,
      String? condition,
      String? need_attention,
      String? contact_phone,
      String? oh_service_id,
      String? object_ids,
      String? object_ids_str,
      String? pc_show_type,
      String? has_collected,
      String? fee_scale,
      String? fee_scale_str,
      String? handle_method,
      String? handle_method_str,
      String? co_organizer,
      String? co_organizer_str,
      String? expected_period,
      String? expected_period_str,
      int? is_show_detail,
      String? process_img_source,
      String? process_img_url,
      String? pxyj,
      String? cjsj,
      List<String>? use_systems,
      String? oh_appid,
      String? can_consult,
      String? can_evaluate,
      String? monitor_roleid,
      String? maintainer_roleid});
}

/// @nodoc
class _$ServiceInfoCopyWithImpl<$Res, $Val extends ServiceInfo>
    implements $ServiceInfoCopyWith<$Res> {
  _$ServiceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_info_id = freezed,
    Object? service_name = freezed,
    Object? app_icon = freezed,
    Object? pc_icon = freezed,
    Object? unint_id = freezed,
    Object? app_type = freezed,
    Object? service_type = freezed,
    Object? service_type_str = freezed,
    Object? android_main = freezed,
    Object? ios_main = freezed,
    Object? h5_url = freezed,
    Object? h5_pcurl = freezed,
    Object? version_id = freezed,
    Object? is_recommend = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? service_sort = freezed,
    Object? status = freezed,
    Object? create_time = freezed,
    Object? create_user_id = freezed,
    Object? is_login = freezed,
    Object? is_new = freezed,
    Object? is_top = freezed,
    Object? is_hot = freezed,
    Object? is_pay = freezed,
    Object? isfull_screen = freezed,
    Object? is_ignore_login = freezed,
    Object? cp_code = freezed,
    Object? sign_key = freezed,
    Object? app_id = freezed,
    Object? lzu_sign_key = freezed,
    Object? h5_service_url = freezed,
    Object? app_icon_url = freezed,
    Object? pc_icon_url = freezed,
    Object? unint_name = freezed,
    Object? role_str = freezed,
    Object? terminal_str = freezed,
    Object? terminal_ids = freezed,
    Object? start_time_str = freezed,
    Object? end_time_str = freezed,
    Object? roles = freezed,
    Object? role_ids = freezed,
    Object? terminals = freezed,
    Object? key_word = freezed,
    Object? use_system = freezed,
    Object? first_letter = freezed,
    Object? introduce = freezed,
    Object? condition = freezed,
    Object? need_attention = freezed,
    Object? contact_phone = freezed,
    Object? oh_service_id = freezed,
    Object? object_ids = freezed,
    Object? object_ids_str = freezed,
    Object? pc_show_type = freezed,
    Object? has_collected = freezed,
    Object? fee_scale = freezed,
    Object? fee_scale_str = freezed,
    Object? handle_method = freezed,
    Object? handle_method_str = freezed,
    Object? co_organizer = freezed,
    Object? co_organizer_str = freezed,
    Object? expected_period = freezed,
    Object? expected_period_str = freezed,
    Object? is_show_detail = freezed,
    Object? process_img_source = freezed,
    Object? process_img_url = freezed,
    Object? pxyj = freezed,
    Object? cjsj = freezed,
    Object? use_systems = freezed,
    Object? oh_appid = freezed,
    Object? can_consult = freezed,
    Object? can_evaluate = freezed,
    Object? monitor_roleid = freezed,
    Object? maintainer_roleid = freezed,
  }) {
    return _then(_value.copyWith(
      service_info_id: freezed == service_info_id
          ? _value.service_info_id
          : service_info_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_name: freezed == service_name
          ? _value.service_name
          : service_name // ignore: cast_nullable_to_non_nullable
              as String?,
      app_icon: freezed == app_icon
          ? _value.app_icon
          : app_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      pc_icon: freezed == pc_icon
          ? _value.pc_icon
          : pc_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      unint_id: freezed == unint_id
          ? _value.unint_id
          : unint_id // ignore: cast_nullable_to_non_nullable
              as String?,
      app_type: freezed == app_type
          ? _value.app_type
          : app_type // ignore: cast_nullable_to_non_nullable
              as int?,
      service_type: freezed == service_type
          ? _value.service_type
          : service_type // ignore: cast_nullable_to_non_nullable
              as String?,
      service_type_str: freezed == service_type_str
          ? _value.service_type_str
          : service_type_str // ignore: cast_nullable_to_non_nullable
              as String?,
      android_main: freezed == android_main
          ? _value.android_main
          : android_main // ignore: cast_nullable_to_non_nullable
              as String?,
      ios_main: freezed == ios_main
          ? _value.ios_main
          : ios_main // ignore: cast_nullable_to_non_nullable
              as String?,
      h5_url: freezed == h5_url
          ? _value.h5_url
          : h5_url // ignore: cast_nullable_to_non_nullable
              as String?,
      h5_pcurl: freezed == h5_pcurl
          ? _value.h5_pcurl
          : h5_pcurl // ignore: cast_nullable_to_non_nullable
              as String?,
      version_id: freezed == version_id
          ? _value.version_id
          : version_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_recommend: freezed == is_recommend
          ? _value.is_recommend
          : is_recommend // ignore: cast_nullable_to_non_nullable
              as int?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      service_sort: freezed == service_sort
          ? _value.service_sort
          : service_sort // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      create_time: freezed == create_time
          ? _value.create_time
          : create_time // ignore: cast_nullable_to_non_nullable
              as String?,
      create_user_id: freezed == create_user_id
          ? _value.create_user_id
          : create_user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_login: freezed == is_login
          ? _value.is_login
          : is_login // ignore: cast_nullable_to_non_nullable
              as int?,
      is_new: freezed == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as int?,
      is_top: freezed == is_top
          ? _value.is_top
          : is_top // ignore: cast_nullable_to_non_nullable
              as int?,
      is_hot: freezed == is_hot
          ? _value.is_hot
          : is_hot // ignore: cast_nullable_to_non_nullable
              as int?,
      is_pay: freezed == is_pay
          ? _value.is_pay
          : is_pay // ignore: cast_nullable_to_non_nullable
              as int?,
      isfull_screen: freezed == isfull_screen
          ? _value.isfull_screen
          : isfull_screen // ignore: cast_nullable_to_non_nullable
              as int?,
      is_ignore_login: freezed == is_ignore_login
          ? _value.is_ignore_login
          : is_ignore_login // ignore: cast_nullable_to_non_nullable
              as int?,
      cp_code: freezed == cp_code
          ? _value.cp_code
          : cp_code // ignore: cast_nullable_to_non_nullable
              as String?,
      sign_key: freezed == sign_key
          ? _value.sign_key
          : sign_key // ignore: cast_nullable_to_non_nullable
              as String?,
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      lzu_sign_key: freezed == lzu_sign_key
          ? _value.lzu_sign_key
          : lzu_sign_key // ignore: cast_nullable_to_non_nullable
              as String?,
      h5_service_url: freezed == h5_service_url
          ? _value.h5_service_url
          : h5_service_url // ignore: cast_nullable_to_non_nullable
              as String?,
      app_icon_url: freezed == app_icon_url
          ? _value.app_icon_url
          : app_icon_url // ignore: cast_nullable_to_non_nullable
              as String?,
      pc_icon_url: freezed == pc_icon_url
          ? _value.pc_icon_url
          : pc_icon_url // ignore: cast_nullable_to_non_nullable
              as String?,
      unint_name: freezed == unint_name
          ? _value.unint_name
          : unint_name // ignore: cast_nullable_to_non_nullable
              as String?,
      role_str: freezed == role_str
          ? _value.role_str
          : role_str // ignore: cast_nullable_to_non_nullable
              as String?,
      terminal_str: freezed == terminal_str
          ? _value.terminal_str
          : terminal_str // ignore: cast_nullable_to_non_nullable
              as String?,
      terminal_ids: freezed == terminal_ids
          ? _value.terminal_ids
          : terminal_ids // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time_str: freezed == start_time_str
          ? _value.start_time_str
          : start_time_str // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time_str: freezed == end_time_str
          ? _value.end_time_str
          : end_time_str // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      role_ids: freezed == role_ids
          ? _value.role_ids
          : role_ids // ignore: cast_nullable_to_non_nullable
              as String?,
      terminals: freezed == terminals
          ? _value.terminals
          : terminals // ignore: cast_nullable_to_non_nullable
              as String?,
      key_word: freezed == key_word
          ? _value.key_word
          : key_word // ignore: cast_nullable_to_non_nullable
              as String?,
      use_system: freezed == use_system
          ? _value.use_system
          : use_system // ignore: cast_nullable_to_non_nullable
              as String?,
      first_letter: freezed == first_letter
          ? _value.first_letter
          : first_letter // ignore: cast_nullable_to_non_nullable
              as String?,
      introduce: freezed == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      need_attention: freezed == need_attention
          ? _value.need_attention
          : need_attention // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_phone: freezed == contact_phone
          ? _value.contact_phone
          : contact_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      oh_service_id: freezed == oh_service_id
          ? _value.oh_service_id
          : oh_service_id // ignore: cast_nullable_to_non_nullable
              as String?,
      object_ids: freezed == object_ids
          ? _value.object_ids
          : object_ids // ignore: cast_nullable_to_non_nullable
              as String?,
      object_ids_str: freezed == object_ids_str
          ? _value.object_ids_str
          : object_ids_str // ignore: cast_nullable_to_non_nullable
              as String?,
      pc_show_type: freezed == pc_show_type
          ? _value.pc_show_type
          : pc_show_type // ignore: cast_nullable_to_non_nullable
              as String?,
      has_collected: freezed == has_collected
          ? _value.has_collected
          : has_collected // ignore: cast_nullable_to_non_nullable
              as String?,
      fee_scale: freezed == fee_scale
          ? _value.fee_scale
          : fee_scale // ignore: cast_nullable_to_non_nullable
              as String?,
      fee_scale_str: freezed == fee_scale_str
          ? _value.fee_scale_str
          : fee_scale_str // ignore: cast_nullable_to_non_nullable
              as String?,
      handle_method: freezed == handle_method
          ? _value.handle_method
          : handle_method // ignore: cast_nullable_to_non_nullable
              as String?,
      handle_method_str: freezed == handle_method_str
          ? _value.handle_method_str
          : handle_method_str // ignore: cast_nullable_to_non_nullable
              as String?,
      co_organizer: freezed == co_organizer
          ? _value.co_organizer
          : co_organizer // ignore: cast_nullable_to_non_nullable
              as String?,
      co_organizer_str: freezed == co_organizer_str
          ? _value.co_organizer_str
          : co_organizer_str // ignore: cast_nullable_to_non_nullable
              as String?,
      expected_period: freezed == expected_period
          ? _value.expected_period
          : expected_period // ignore: cast_nullable_to_non_nullable
              as String?,
      expected_period_str: freezed == expected_period_str
          ? _value.expected_period_str
          : expected_period_str // ignore: cast_nullable_to_non_nullable
              as String?,
      is_show_detail: freezed == is_show_detail
          ? _value.is_show_detail
          : is_show_detail // ignore: cast_nullable_to_non_nullable
              as int?,
      process_img_source: freezed == process_img_source
          ? _value.process_img_source
          : process_img_source // ignore: cast_nullable_to_non_nullable
              as String?,
      process_img_url: freezed == process_img_url
          ? _value.process_img_url
          : process_img_url // ignore: cast_nullable_to_non_nullable
              as String?,
      pxyj: freezed == pxyj
          ? _value.pxyj
          : pxyj // ignore: cast_nullable_to_non_nullable
              as String?,
      cjsj: freezed == cjsj
          ? _value.cjsj
          : cjsj // ignore: cast_nullable_to_non_nullable
              as String?,
      use_systems: freezed == use_systems
          ? _value.use_systems
          : use_systems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      oh_appid: freezed == oh_appid
          ? _value.oh_appid
          : oh_appid // ignore: cast_nullable_to_non_nullable
              as String?,
      can_consult: freezed == can_consult
          ? _value.can_consult
          : can_consult // ignore: cast_nullable_to_non_nullable
              as String?,
      can_evaluate: freezed == can_evaluate
          ? _value.can_evaluate
          : can_evaluate // ignore: cast_nullable_to_non_nullable
              as String?,
      monitor_roleid: freezed == monitor_roleid
          ? _value.monitor_roleid
          : monitor_roleid // ignore: cast_nullable_to_non_nullable
              as String?,
      maintainer_roleid: freezed == maintainer_roleid
          ? _value.maintainer_roleid
          : maintainer_roleid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceInfoImplCopyWith<$Res>
    implements $ServiceInfoCopyWith<$Res> {
  factory _$$ServiceInfoImplCopyWith(
          _$ServiceInfoImpl value, $Res Function(_$ServiceInfoImpl) then) =
      __$$ServiceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? service_info_id,
      String? service_name,
      String? app_icon,
      String? pc_icon,
      String? unint_id,
      int? app_type,
      String? service_type,
      String? service_type_str,
      String? android_main,
      String? ios_main,
      String? h5_url,
      String? h5_pcurl,
      String? version_id,
      int? is_recommend,
      String? start_time,
      String? end_time,
      int? service_sort,
      int? status,
      String? create_time,
      String? create_user_id,
      int? is_login,
      int? is_new,
      int? is_top,
      int? is_hot,
      int? is_pay,
      int? isfull_screen,
      int? is_ignore_login,
      String? cp_code,
      String? sign_key,
      String? app_id,
      String? lzu_sign_key,
      String? h5_service_url,
      String? app_icon_url,
      String? pc_icon_url,
      String? unint_name,
      String? role_str,
      String? terminal_str,
      String? terminal_ids,
      String? start_time_str,
      String? end_time_str,
      String? roles,
      String? role_ids,
      String? terminals,
      String? key_word,
      String? use_system,
      String? first_letter,
      String? introduce,
      String? condition,
      String? need_attention,
      String? contact_phone,
      String? oh_service_id,
      String? object_ids,
      String? object_ids_str,
      String? pc_show_type,
      String? has_collected,
      String? fee_scale,
      String? fee_scale_str,
      String? handle_method,
      String? handle_method_str,
      String? co_organizer,
      String? co_organizer_str,
      String? expected_period,
      String? expected_period_str,
      int? is_show_detail,
      String? process_img_source,
      String? process_img_url,
      String? pxyj,
      String? cjsj,
      List<String>? use_systems,
      String? oh_appid,
      String? can_consult,
      String? can_evaluate,
      String? monitor_roleid,
      String? maintainer_roleid});
}

/// @nodoc
class __$$ServiceInfoImplCopyWithImpl<$Res>
    extends _$ServiceInfoCopyWithImpl<$Res, _$ServiceInfoImpl>
    implements _$$ServiceInfoImplCopyWith<$Res> {
  __$$ServiceInfoImplCopyWithImpl(
      _$ServiceInfoImpl _value, $Res Function(_$ServiceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service_info_id = freezed,
    Object? service_name = freezed,
    Object? app_icon = freezed,
    Object? pc_icon = freezed,
    Object? unint_id = freezed,
    Object? app_type = freezed,
    Object? service_type = freezed,
    Object? service_type_str = freezed,
    Object? android_main = freezed,
    Object? ios_main = freezed,
    Object? h5_url = freezed,
    Object? h5_pcurl = freezed,
    Object? version_id = freezed,
    Object? is_recommend = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? service_sort = freezed,
    Object? status = freezed,
    Object? create_time = freezed,
    Object? create_user_id = freezed,
    Object? is_login = freezed,
    Object? is_new = freezed,
    Object? is_top = freezed,
    Object? is_hot = freezed,
    Object? is_pay = freezed,
    Object? isfull_screen = freezed,
    Object? is_ignore_login = freezed,
    Object? cp_code = freezed,
    Object? sign_key = freezed,
    Object? app_id = freezed,
    Object? lzu_sign_key = freezed,
    Object? h5_service_url = freezed,
    Object? app_icon_url = freezed,
    Object? pc_icon_url = freezed,
    Object? unint_name = freezed,
    Object? role_str = freezed,
    Object? terminal_str = freezed,
    Object? terminal_ids = freezed,
    Object? start_time_str = freezed,
    Object? end_time_str = freezed,
    Object? roles = freezed,
    Object? role_ids = freezed,
    Object? terminals = freezed,
    Object? key_word = freezed,
    Object? use_system = freezed,
    Object? first_letter = freezed,
    Object? introduce = freezed,
    Object? condition = freezed,
    Object? need_attention = freezed,
    Object? contact_phone = freezed,
    Object? oh_service_id = freezed,
    Object? object_ids = freezed,
    Object? object_ids_str = freezed,
    Object? pc_show_type = freezed,
    Object? has_collected = freezed,
    Object? fee_scale = freezed,
    Object? fee_scale_str = freezed,
    Object? handle_method = freezed,
    Object? handle_method_str = freezed,
    Object? co_organizer = freezed,
    Object? co_organizer_str = freezed,
    Object? expected_period = freezed,
    Object? expected_period_str = freezed,
    Object? is_show_detail = freezed,
    Object? process_img_source = freezed,
    Object? process_img_url = freezed,
    Object? pxyj = freezed,
    Object? cjsj = freezed,
    Object? use_systems = freezed,
    Object? oh_appid = freezed,
    Object? can_consult = freezed,
    Object? can_evaluate = freezed,
    Object? monitor_roleid = freezed,
    Object? maintainer_roleid = freezed,
  }) {
    return _then(_$ServiceInfoImpl(
      service_info_id: freezed == service_info_id
          ? _value.service_info_id
          : service_info_id // ignore: cast_nullable_to_non_nullable
              as String?,
      service_name: freezed == service_name
          ? _value.service_name
          : service_name // ignore: cast_nullable_to_non_nullable
              as String?,
      app_icon: freezed == app_icon
          ? _value.app_icon
          : app_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      pc_icon: freezed == pc_icon
          ? _value.pc_icon
          : pc_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      unint_id: freezed == unint_id
          ? _value.unint_id
          : unint_id // ignore: cast_nullable_to_non_nullable
              as String?,
      app_type: freezed == app_type
          ? _value.app_type
          : app_type // ignore: cast_nullable_to_non_nullable
              as int?,
      service_type: freezed == service_type
          ? _value.service_type
          : service_type // ignore: cast_nullable_to_non_nullable
              as String?,
      service_type_str: freezed == service_type_str
          ? _value.service_type_str
          : service_type_str // ignore: cast_nullable_to_non_nullable
              as String?,
      android_main: freezed == android_main
          ? _value.android_main
          : android_main // ignore: cast_nullable_to_non_nullable
              as String?,
      ios_main: freezed == ios_main
          ? _value.ios_main
          : ios_main // ignore: cast_nullable_to_non_nullable
              as String?,
      h5_url: freezed == h5_url
          ? _value.h5_url
          : h5_url // ignore: cast_nullable_to_non_nullable
              as String?,
      h5_pcurl: freezed == h5_pcurl
          ? _value.h5_pcurl
          : h5_pcurl // ignore: cast_nullable_to_non_nullable
              as String?,
      version_id: freezed == version_id
          ? _value.version_id
          : version_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_recommend: freezed == is_recommend
          ? _value.is_recommend
          : is_recommend // ignore: cast_nullable_to_non_nullable
              as int?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      service_sort: freezed == service_sort
          ? _value.service_sort
          : service_sort // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      create_time: freezed == create_time
          ? _value.create_time
          : create_time // ignore: cast_nullable_to_non_nullable
              as String?,
      create_user_id: freezed == create_user_id
          ? _value.create_user_id
          : create_user_id // ignore: cast_nullable_to_non_nullable
              as String?,
      is_login: freezed == is_login
          ? _value.is_login
          : is_login // ignore: cast_nullable_to_non_nullable
              as int?,
      is_new: freezed == is_new
          ? _value.is_new
          : is_new // ignore: cast_nullable_to_non_nullable
              as int?,
      is_top: freezed == is_top
          ? _value.is_top
          : is_top // ignore: cast_nullable_to_non_nullable
              as int?,
      is_hot: freezed == is_hot
          ? _value.is_hot
          : is_hot // ignore: cast_nullable_to_non_nullable
              as int?,
      is_pay: freezed == is_pay
          ? _value.is_pay
          : is_pay // ignore: cast_nullable_to_non_nullable
              as int?,
      isfull_screen: freezed == isfull_screen
          ? _value.isfull_screen
          : isfull_screen // ignore: cast_nullable_to_non_nullable
              as int?,
      is_ignore_login: freezed == is_ignore_login
          ? _value.is_ignore_login
          : is_ignore_login // ignore: cast_nullable_to_non_nullable
              as int?,
      cp_code: freezed == cp_code
          ? _value.cp_code
          : cp_code // ignore: cast_nullable_to_non_nullable
              as String?,
      sign_key: freezed == sign_key
          ? _value.sign_key
          : sign_key // ignore: cast_nullable_to_non_nullable
              as String?,
      app_id: freezed == app_id
          ? _value.app_id
          : app_id // ignore: cast_nullable_to_non_nullable
              as String?,
      lzu_sign_key: freezed == lzu_sign_key
          ? _value.lzu_sign_key
          : lzu_sign_key // ignore: cast_nullable_to_non_nullable
              as String?,
      h5_service_url: freezed == h5_service_url
          ? _value.h5_service_url
          : h5_service_url // ignore: cast_nullable_to_non_nullable
              as String?,
      app_icon_url: freezed == app_icon_url
          ? _value.app_icon_url
          : app_icon_url // ignore: cast_nullable_to_non_nullable
              as String?,
      pc_icon_url: freezed == pc_icon_url
          ? _value.pc_icon_url
          : pc_icon_url // ignore: cast_nullable_to_non_nullable
              as String?,
      unint_name: freezed == unint_name
          ? _value.unint_name
          : unint_name // ignore: cast_nullable_to_non_nullable
              as String?,
      role_str: freezed == role_str
          ? _value.role_str
          : role_str // ignore: cast_nullable_to_non_nullable
              as String?,
      terminal_str: freezed == terminal_str
          ? _value.terminal_str
          : terminal_str // ignore: cast_nullable_to_non_nullable
              as String?,
      terminal_ids: freezed == terminal_ids
          ? _value.terminal_ids
          : terminal_ids // ignore: cast_nullable_to_non_nullable
              as String?,
      start_time_str: freezed == start_time_str
          ? _value.start_time_str
          : start_time_str // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time_str: freezed == end_time_str
          ? _value.end_time_str
          : end_time_str // ignore: cast_nullable_to_non_nullable
              as String?,
      roles: freezed == roles
          ? _value.roles
          : roles // ignore: cast_nullable_to_non_nullable
              as String?,
      role_ids: freezed == role_ids
          ? _value.role_ids
          : role_ids // ignore: cast_nullable_to_non_nullable
              as String?,
      terminals: freezed == terminals
          ? _value.terminals
          : terminals // ignore: cast_nullable_to_non_nullable
              as String?,
      key_word: freezed == key_word
          ? _value.key_word
          : key_word // ignore: cast_nullable_to_non_nullable
              as String?,
      use_system: freezed == use_system
          ? _value.use_system
          : use_system // ignore: cast_nullable_to_non_nullable
              as String?,
      first_letter: freezed == first_letter
          ? _value.first_letter
          : first_letter // ignore: cast_nullable_to_non_nullable
              as String?,
      introduce: freezed == introduce
          ? _value.introduce
          : introduce // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      need_attention: freezed == need_attention
          ? _value.need_attention
          : need_attention // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_phone: freezed == contact_phone
          ? _value.contact_phone
          : contact_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      oh_service_id: freezed == oh_service_id
          ? _value.oh_service_id
          : oh_service_id // ignore: cast_nullable_to_non_nullable
              as String?,
      object_ids: freezed == object_ids
          ? _value.object_ids
          : object_ids // ignore: cast_nullable_to_non_nullable
              as String?,
      object_ids_str: freezed == object_ids_str
          ? _value.object_ids_str
          : object_ids_str // ignore: cast_nullable_to_non_nullable
              as String?,
      pc_show_type: freezed == pc_show_type
          ? _value.pc_show_type
          : pc_show_type // ignore: cast_nullable_to_non_nullable
              as String?,
      has_collected: freezed == has_collected
          ? _value.has_collected
          : has_collected // ignore: cast_nullable_to_non_nullable
              as String?,
      fee_scale: freezed == fee_scale
          ? _value.fee_scale
          : fee_scale // ignore: cast_nullable_to_non_nullable
              as String?,
      fee_scale_str: freezed == fee_scale_str
          ? _value.fee_scale_str
          : fee_scale_str // ignore: cast_nullable_to_non_nullable
              as String?,
      handle_method: freezed == handle_method
          ? _value.handle_method
          : handle_method // ignore: cast_nullable_to_non_nullable
              as String?,
      handle_method_str: freezed == handle_method_str
          ? _value.handle_method_str
          : handle_method_str // ignore: cast_nullable_to_non_nullable
              as String?,
      co_organizer: freezed == co_organizer
          ? _value.co_organizer
          : co_organizer // ignore: cast_nullable_to_non_nullable
              as String?,
      co_organizer_str: freezed == co_organizer_str
          ? _value.co_organizer_str
          : co_organizer_str // ignore: cast_nullable_to_non_nullable
              as String?,
      expected_period: freezed == expected_period
          ? _value.expected_period
          : expected_period // ignore: cast_nullable_to_non_nullable
              as String?,
      expected_period_str: freezed == expected_period_str
          ? _value.expected_period_str
          : expected_period_str // ignore: cast_nullable_to_non_nullable
              as String?,
      is_show_detail: freezed == is_show_detail
          ? _value.is_show_detail
          : is_show_detail // ignore: cast_nullable_to_non_nullable
              as int?,
      process_img_source: freezed == process_img_source
          ? _value.process_img_source
          : process_img_source // ignore: cast_nullable_to_non_nullable
              as String?,
      process_img_url: freezed == process_img_url
          ? _value.process_img_url
          : process_img_url // ignore: cast_nullable_to_non_nullable
              as String?,
      pxyj: freezed == pxyj
          ? _value.pxyj
          : pxyj // ignore: cast_nullable_to_non_nullable
              as String?,
      cjsj: freezed == cjsj
          ? _value.cjsj
          : cjsj // ignore: cast_nullable_to_non_nullable
              as String?,
      use_systems: freezed == use_systems
          ? _value._use_systems
          : use_systems // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      oh_appid: freezed == oh_appid
          ? _value.oh_appid
          : oh_appid // ignore: cast_nullable_to_non_nullable
              as String?,
      can_consult: freezed == can_consult
          ? _value.can_consult
          : can_consult // ignore: cast_nullable_to_non_nullable
              as String?,
      can_evaluate: freezed == can_evaluate
          ? _value.can_evaluate
          : can_evaluate // ignore: cast_nullable_to_non_nullable
              as String?,
      monitor_roleid: freezed == monitor_roleid
          ? _value.monitor_roleid
          : monitor_roleid // ignore: cast_nullable_to_non_nullable
              as String?,
      maintainer_roleid: freezed == maintainer_roleid
          ? _value.maintainer_roleid
          : maintainer_roleid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceInfoImpl implements _ServiceInfo {
  _$ServiceInfoImpl(
      {required this.service_info_id,
      required this.service_name,
      required this.app_icon,
      required this.pc_icon,
      required this.unint_id,
      required this.app_type,
      required this.service_type,
      required this.service_type_str,
      required this.android_main,
      required this.ios_main,
      required this.h5_url,
      required this.h5_pcurl,
      required this.version_id,
      required this.is_recommend,
      required this.start_time,
      required this.end_time,
      required this.service_sort,
      required this.status,
      required this.create_time,
      required this.create_user_id,
      required this.is_login,
      required this.is_new,
      required this.is_top,
      required this.is_hot,
      required this.is_pay,
      required this.isfull_screen,
      required this.is_ignore_login,
      required this.cp_code,
      required this.sign_key,
      required this.app_id,
      required this.lzu_sign_key,
      required this.h5_service_url,
      required this.app_icon_url,
      required this.pc_icon_url,
      required this.unint_name,
      required this.role_str,
      required this.terminal_str,
      required this.terminal_ids,
      required this.start_time_str,
      required this.end_time_str,
      required this.roles,
      required this.role_ids,
      required this.terminals,
      required this.key_word,
      required this.use_system,
      required this.first_letter,
      required this.introduce,
      required this.condition,
      required this.need_attention,
      required this.contact_phone,
      required this.oh_service_id,
      required this.object_ids,
      required this.object_ids_str,
      required this.pc_show_type,
      required this.has_collected,
      required this.fee_scale,
      required this.fee_scale_str,
      required this.handle_method,
      required this.handle_method_str,
      required this.co_organizer,
      required this.co_organizer_str,
      required this.expected_period,
      required this.expected_period_str,
      required this.is_show_detail,
      required this.process_img_source,
      required this.process_img_url,
      required this.pxyj,
      required this.cjsj,
      required final List<String>? use_systems,
      required this.oh_appid,
      required this.can_consult,
      required this.can_evaluate,
      required this.monitor_roleid,
      required this.maintainer_roleid})
      : _use_systems = use_systems;

  factory _$ServiceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceInfoImplFromJson(json);

  @override
  final String? service_info_id;
  @override
  final String? service_name;
  @override
  final String? app_icon;
  @override
  final String? pc_icon;
  @override
  final String? unint_id;
  @override
  final int? app_type;
  @override
  final String? service_type;
  @override
  final String? service_type_str;
  @override
  final String? android_main;
  @override
  final String? ios_main;
  @override
  final String? h5_url;
  @override
  final String? h5_pcurl;
  @override
  final String? version_id;
  @override
  final int? is_recommend;
  @override
  final String? start_time;
  @override
  final String? end_time;
  @override
  final int? service_sort;
  @override
  final int? status;
  @override
  final String? create_time;
  @override
  final String? create_user_id;
  @override
  final int? is_login;
  @override
  final int? is_new;
  @override
  final int? is_top;
  @override
  final int? is_hot;
  @override
  final int? is_pay;
  @override
  final int? isfull_screen;
  @override
  final int? is_ignore_login;
  @override
  final String? cp_code;
  @override
  final String? sign_key;
  @override
  final String? app_id;
  @override
  final String? lzu_sign_key;
  @override
  final String? h5_service_url;
  @override
  final String? app_icon_url;
  @override
  final String? pc_icon_url;
  @override
  final String? unint_name;
  @override
  final String? role_str;
  @override
  final String? terminal_str;
  @override
  final String? terminal_ids;
  @override
  final String? start_time_str;
  @override
  final String? end_time_str;
  @override
  final String? roles;
  @override
  final String? role_ids;
  @override
  final String? terminals;
  @override
  final String? key_word;
  @override
  final String? use_system;
  @override
  final String? first_letter;
  @override
  final String? introduce;
  @override
  final String? condition;
  @override
  final String? need_attention;
  @override
  final String? contact_phone;
  @override
  final String? oh_service_id;
  @override
  final String? object_ids;
  @override
  final String? object_ids_str;
  @override
  final String? pc_show_type;
  @override
  final String? has_collected;
  @override
  final String? fee_scale;
  @override
  final String? fee_scale_str;
  @override
  final String? handle_method;
  @override
  final String? handle_method_str;
  @override
  final String? co_organizer;
  @override
  final String? co_organizer_str;
  @override
  final String? expected_period;
  @override
  final String? expected_period_str;
  @override
  final int? is_show_detail;
  @override
  final String? process_img_source;
  @override
  final String? process_img_url;
  @override
  final String? pxyj;
  @override
  final String? cjsj;
  final List<String>? _use_systems;
  @override
  List<String>? get use_systems {
    final value = _use_systems;
    if (value == null) return null;
    if (_use_systems is EqualUnmodifiableListView) return _use_systems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? oh_appid;
  @override
  final String? can_consult;
  @override
  final String? can_evaluate;
  @override
  final String? monitor_roleid;
  @override
  final String? maintainer_roleid;

  @override
  String toString() {
    return 'ServiceInfo(service_info_id: $service_info_id, service_name: $service_name, app_icon: $app_icon, pc_icon: $pc_icon, unint_id: $unint_id, app_type: $app_type, service_type: $service_type, service_type_str: $service_type_str, android_main: $android_main, ios_main: $ios_main, h5_url: $h5_url, h5_pcurl: $h5_pcurl, version_id: $version_id, is_recommend: $is_recommend, start_time: $start_time, end_time: $end_time, service_sort: $service_sort, status: $status, create_time: $create_time, create_user_id: $create_user_id, is_login: $is_login, is_new: $is_new, is_top: $is_top, is_hot: $is_hot, is_pay: $is_pay, isfull_screen: $isfull_screen, is_ignore_login: $is_ignore_login, cp_code: $cp_code, sign_key: $sign_key, app_id: $app_id, lzu_sign_key: $lzu_sign_key, h5_service_url: $h5_service_url, app_icon_url: $app_icon_url, pc_icon_url: $pc_icon_url, unint_name: $unint_name, role_str: $role_str, terminal_str: $terminal_str, terminal_ids: $terminal_ids, start_time_str: $start_time_str, end_time_str: $end_time_str, roles: $roles, role_ids: $role_ids, terminals: $terminals, key_word: $key_word, use_system: $use_system, first_letter: $first_letter, introduce: $introduce, condition: $condition, need_attention: $need_attention, contact_phone: $contact_phone, oh_service_id: $oh_service_id, object_ids: $object_ids, object_ids_str: $object_ids_str, pc_show_type: $pc_show_type, has_collected: $has_collected, fee_scale: $fee_scale, fee_scale_str: $fee_scale_str, handle_method: $handle_method, handle_method_str: $handle_method_str, co_organizer: $co_organizer, co_organizer_str: $co_organizer_str, expected_period: $expected_period, expected_period_str: $expected_period_str, is_show_detail: $is_show_detail, process_img_source: $process_img_source, process_img_url: $process_img_url, pxyj: $pxyj, cjsj: $cjsj, use_systems: $use_systems, oh_appid: $oh_appid, can_consult: $can_consult, can_evaluate: $can_evaluate, monitor_roleid: $monitor_roleid, maintainer_roleid: $maintainer_roleid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceInfoImpl &&
            (identical(other.service_info_id, service_info_id) ||
                other.service_info_id == service_info_id) &&
            (identical(other.service_name, service_name) ||
                other.service_name == service_name) &&
            (identical(other.app_icon, app_icon) ||
                other.app_icon == app_icon) &&
            (identical(other.pc_icon, pc_icon) || other.pc_icon == pc_icon) &&
            (identical(other.unint_id, unint_id) ||
                other.unint_id == unint_id) &&
            (identical(other.app_type, app_type) ||
                other.app_type == app_type) &&
            (identical(other.service_type, service_type) ||
                other.service_type == service_type) &&
            (identical(other.service_type_str, service_type_str) ||
                other.service_type_str == service_type_str) &&
            (identical(other.android_main, android_main) ||
                other.android_main == android_main) &&
            (identical(other.ios_main, ios_main) ||
                other.ios_main == ios_main) &&
            (identical(other.h5_url, h5_url) || other.h5_url == h5_url) &&
            (identical(other.h5_pcurl, h5_pcurl) ||
                other.h5_pcurl == h5_pcurl) &&
            (identical(other.version_id, version_id) ||
                other.version_id == version_id) &&
            (identical(other.is_recommend, is_recommend) ||
                other.is_recommend == is_recommend) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.service_sort, service_sort) ||
                other.service_sort == service_sort) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.create_time, create_time) ||
                other.create_time == create_time) &&
            (identical(other.create_user_id, create_user_id) ||
                other.create_user_id == create_user_id) &&
            (identical(other.is_login, is_login) ||
                other.is_login == is_login) &&
            (identical(other.is_new, is_new) || other.is_new == is_new) &&
            (identical(other.is_top, is_top) || other.is_top == is_top) &&
            (identical(other.is_hot, is_hot) || other.is_hot == is_hot) &&
            (identical(other.is_pay, is_pay) || other.is_pay == is_pay) &&
            (identical(other.isfull_screen, isfull_screen) ||
                other.isfull_screen == isfull_screen) &&
            (identical(other.is_ignore_login, is_ignore_login) ||
                other.is_ignore_login == is_ignore_login) &&
            (identical(other.cp_code, cp_code) || other.cp_code == cp_code) &&
            (identical(other.sign_key, sign_key) ||
                other.sign_key == sign_key) &&
            (identical(other.app_id, app_id) || other.app_id == app_id) &&
            (identical(other.lzu_sign_key, lzu_sign_key) ||
                other.lzu_sign_key == lzu_sign_key) &&
            (identical(other.h5_service_url, h5_service_url) ||
                other.h5_service_url == h5_service_url) &&
            (identical(other.app_icon_url, app_icon_url) ||
                other.app_icon_url == app_icon_url) &&
            (identical(other.pc_icon_url, pc_icon_url) ||
                other.pc_icon_url == pc_icon_url) &&
            (identical(other.unint_name, unint_name) ||
                other.unint_name == unint_name) &&
            (identical(other.role_str, role_str) ||
                other.role_str == role_str) &&
            (identical(other.terminal_str, terminal_str) ||
                other.terminal_str == terminal_str) &&
            (identical(other.terminal_ids, terminal_ids) ||
                other.terminal_ids == terminal_ids) &&
            (identical(other.start_time_str, start_time_str) ||
                other.start_time_str == start_time_str) &&
            (identical(other.end_time_str, end_time_str) ||
                other.end_time_str == end_time_str) &&
            (identical(other.roles, roles) || other.roles == roles) &&
            (identical(other.role_ids, role_ids) ||
                other.role_ids == role_ids) &&
            (identical(other.terminals, terminals) ||
                other.terminals == terminals) &&
            (identical(other.key_word, key_word) ||
                other.key_word == key_word) &&
            (identical(other.use_system, use_system) ||
                other.use_system == use_system) &&
            (identical(other.first_letter, first_letter) ||
                other.first_letter == first_letter) &&
            (identical(other.introduce, introduce) ||
                other.introduce == introduce) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.need_attention, need_attention) ||
                other.need_attention == need_attention) &&
            (identical(other.contact_phone, contact_phone) ||
                other.contact_phone == contact_phone) &&
            (identical(other.oh_service_id, oh_service_id) ||
                other.oh_service_id == oh_service_id) &&
            (identical(other.object_ids, object_ids) ||
                other.object_ids == object_ids) &&
            (identical(other.object_ids_str, object_ids_str) ||
                other.object_ids_str == object_ids_str) &&
            (identical(other.pc_show_type, pc_show_type) || other.pc_show_type == pc_show_type) &&
            (identical(other.has_collected, has_collected) || other.has_collected == has_collected) &&
            (identical(other.fee_scale, fee_scale) || other.fee_scale == fee_scale) &&
            (identical(other.fee_scale_str, fee_scale_str) || other.fee_scale_str == fee_scale_str) &&
            (identical(other.handle_method, handle_method) || other.handle_method == handle_method) &&
            (identical(other.handle_method_str, handle_method_str) || other.handle_method_str == handle_method_str) &&
            (identical(other.co_organizer, co_organizer) || other.co_organizer == co_organizer) &&
            (identical(other.co_organizer_str, co_organizer_str) || other.co_organizer_str == co_organizer_str) &&
            (identical(other.expected_period, expected_period) || other.expected_period == expected_period) &&
            (identical(other.expected_period_str, expected_period_str) || other.expected_period_str == expected_period_str) &&
            (identical(other.is_show_detail, is_show_detail) || other.is_show_detail == is_show_detail) &&
            (identical(other.process_img_source, process_img_source) || other.process_img_source == process_img_source) &&
            (identical(other.process_img_url, process_img_url) || other.process_img_url == process_img_url) &&
            (identical(other.pxyj, pxyj) || other.pxyj == pxyj) &&
            (identical(other.cjsj, cjsj) || other.cjsj == cjsj) &&
            const DeepCollectionEquality().equals(other._use_systems, _use_systems) &&
            (identical(other.oh_appid, oh_appid) || other.oh_appid == oh_appid) &&
            (identical(other.can_consult, can_consult) || other.can_consult == can_consult) &&
            (identical(other.can_evaluate, can_evaluate) || other.can_evaluate == can_evaluate) &&
            (identical(other.monitor_roleid, monitor_roleid) || other.monitor_roleid == monitor_roleid) &&
            (identical(other.maintainer_roleid, maintainer_roleid) || other.maintainer_roleid == maintainer_roleid));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        service_info_id,
        service_name,
        app_icon,
        pc_icon,
        unint_id,
        app_type,
        service_type,
        service_type_str,
        android_main,
        ios_main,
        h5_url,
        h5_pcurl,
        version_id,
        is_recommend,
        start_time,
        end_time,
        service_sort,
        status,
        create_time,
        create_user_id,
        is_login,
        is_new,
        is_top,
        is_hot,
        is_pay,
        isfull_screen,
        is_ignore_login,
        cp_code,
        sign_key,
        app_id,
        lzu_sign_key,
        h5_service_url,
        app_icon_url,
        pc_icon_url,
        unint_name,
        role_str,
        terminal_str,
        terminal_ids,
        start_time_str,
        end_time_str,
        roles,
        role_ids,
        terminals,
        key_word,
        use_system,
        first_letter,
        introduce,
        condition,
        need_attention,
        contact_phone,
        oh_service_id,
        object_ids,
        object_ids_str,
        pc_show_type,
        has_collected,
        fee_scale,
        fee_scale_str,
        handle_method,
        handle_method_str,
        co_organizer,
        co_organizer_str,
        expected_period,
        expected_period_str,
        is_show_detail,
        process_img_source,
        process_img_url,
        pxyj,
        cjsj,
        const DeepCollectionEquality().hash(_use_systems),
        oh_appid,
        can_consult,
        can_evaluate,
        monitor_roleid,
        maintainer_roleid
      ]);

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceInfoImplCopyWith<_$ServiceInfoImpl> get copyWith =>
      __$$ServiceInfoImplCopyWithImpl<_$ServiceInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceInfoImplToJson(
      this,
    );
  }
}

abstract class _ServiceInfo implements ServiceInfo {
  factory _ServiceInfo(
      {required final String? service_info_id,
      required final String? service_name,
      required final String? app_icon,
      required final String? pc_icon,
      required final String? unint_id,
      required final int? app_type,
      required final String? service_type,
      required final String? service_type_str,
      required final String? android_main,
      required final String? ios_main,
      required final String? h5_url,
      required final String? h5_pcurl,
      required final String? version_id,
      required final int? is_recommend,
      required final String? start_time,
      required final String? end_time,
      required final int? service_sort,
      required final int? status,
      required final String? create_time,
      required final String? create_user_id,
      required final int? is_login,
      required final int? is_new,
      required final int? is_top,
      required final int? is_hot,
      required final int? is_pay,
      required final int? isfull_screen,
      required final int? is_ignore_login,
      required final String? cp_code,
      required final String? sign_key,
      required final String? app_id,
      required final String? lzu_sign_key,
      required final String? h5_service_url,
      required final String? app_icon_url,
      required final String? pc_icon_url,
      required final String? unint_name,
      required final String? role_str,
      required final String? terminal_str,
      required final String? terminal_ids,
      required final String? start_time_str,
      required final String? end_time_str,
      required final String? roles,
      required final String? role_ids,
      required final String? terminals,
      required final String? key_word,
      required final String? use_system,
      required final String? first_letter,
      required final String? introduce,
      required final String? condition,
      required final String? need_attention,
      required final String? contact_phone,
      required final String? oh_service_id,
      required final String? object_ids,
      required final String? object_ids_str,
      required final String? pc_show_type,
      required final String? has_collected,
      required final String? fee_scale,
      required final String? fee_scale_str,
      required final String? handle_method,
      required final String? handle_method_str,
      required final String? co_organizer,
      required final String? co_organizer_str,
      required final String? expected_period,
      required final String? expected_period_str,
      required final int? is_show_detail,
      required final String? process_img_source,
      required final String? process_img_url,
      required final String? pxyj,
      required final String? cjsj,
      required final List<String>? use_systems,
      required final String? oh_appid,
      required final String? can_consult,
      required final String? can_evaluate,
      required final String? monitor_roleid,
      required final String? maintainer_roleid}) = _$ServiceInfoImpl;

  factory _ServiceInfo.fromJson(Map<String, dynamic> json) =
      _$ServiceInfoImpl.fromJson;

  @override
  String? get service_info_id;
  @override
  String? get service_name;
  @override
  String? get app_icon;
  @override
  String? get pc_icon;
  @override
  String? get unint_id;
  @override
  int? get app_type;
  @override
  String? get service_type;
  @override
  String? get service_type_str;
  @override
  String? get android_main;
  @override
  String? get ios_main;
  @override
  String? get h5_url;
  @override
  String? get h5_pcurl;
  @override
  String? get version_id;
  @override
  int? get is_recommend;
  @override
  String? get start_time;
  @override
  String? get end_time;
  @override
  int? get service_sort;
  @override
  int? get status;
  @override
  String? get create_time;
  @override
  String? get create_user_id;
  @override
  int? get is_login;
  @override
  int? get is_new;
  @override
  int? get is_top;
  @override
  int? get is_hot;
  @override
  int? get is_pay;
  @override
  int? get isfull_screen;
  @override
  int? get is_ignore_login;
  @override
  String? get cp_code;
  @override
  String? get sign_key;
  @override
  String? get app_id;
  @override
  String? get lzu_sign_key;
  @override
  String? get h5_service_url;
  @override
  String? get app_icon_url;
  @override
  String? get pc_icon_url;
  @override
  String? get unint_name;
  @override
  String? get role_str;
  @override
  String? get terminal_str;
  @override
  String? get terminal_ids;
  @override
  String? get start_time_str;
  @override
  String? get end_time_str;
  @override
  String? get roles;
  @override
  String? get role_ids;
  @override
  String? get terminals;
  @override
  String? get key_word;
  @override
  String? get use_system;
  @override
  String? get first_letter;
  @override
  String? get introduce;
  @override
  String? get condition;
  @override
  String? get need_attention;
  @override
  String? get contact_phone;
  @override
  String? get oh_service_id;
  @override
  String? get object_ids;
  @override
  String? get object_ids_str;
  @override
  String? get pc_show_type;
  @override
  String? get has_collected;
  @override
  String? get fee_scale;
  @override
  String? get fee_scale_str;
  @override
  String? get handle_method;
  @override
  String? get handle_method_str;
  @override
  String? get co_organizer;
  @override
  String? get co_organizer_str;
  @override
  String? get expected_period;
  @override
  String? get expected_period_str;
  @override
  int? get is_show_detail;
  @override
  String? get process_img_source;
  @override
  String? get process_img_url;
  @override
  String? get pxyj;
  @override
  String? get cjsj;
  @override
  List<String>? get use_systems;
  @override
  String? get oh_appid;
  @override
  String? get can_consult;
  @override
  String? get can_evaluate;
  @override
  String? get monitor_roleid;
  @override
  String? get maintainer_roleid;

  /// Create a copy of ServiceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceInfoImplCopyWith<_$ServiceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceResponse _$ServiceResponseFromJson(Map<String, dynamic> json) {
  return _ServiceResponse.fromJson(json);
}

/// @nodoc
mixin _$ServiceResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ServiceInfo>? get data => throw _privateConstructorUsedError;

  /// Serializes this ServiceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceResponseCopyWith<ServiceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceResponseCopyWith<$Res> {
  factory $ServiceResponseCopyWith(
          ServiceResponse value, $Res Function(ServiceResponse) then) =
      _$ServiceResponseCopyWithImpl<$Res, ServiceResponse>;
  @useResult
  $Res call({int code, String message, List<ServiceInfo>? data});
}

/// @nodoc
class _$ServiceResponseCopyWithImpl<$Res, $Val extends ServiceResponse>
    implements $ServiceResponseCopyWith<$Res> {
  _$ServiceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServiceInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceResponseImplCopyWith<$Res>
    implements $ServiceResponseCopyWith<$Res> {
  factory _$$ServiceResponseImplCopyWith(_$ServiceResponseImpl value,
          $Res Function(_$ServiceResponseImpl) then) =
      __$$ServiceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, List<ServiceInfo>? data});
}

/// @nodoc
class __$$ServiceResponseImplCopyWithImpl<$Res>
    extends _$ServiceResponseCopyWithImpl<$Res, _$ServiceResponseImpl>
    implements _$$ServiceResponseImplCopyWith<$Res> {
  __$$ServiceResponseImplCopyWithImpl(
      _$ServiceResponseImpl _value, $Res Function(_$ServiceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$ServiceResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServiceInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceResponseImpl implements _ServiceResponse {
  _$ServiceResponseImpl(
      {required this.code,
      required this.message,
      required final List<ServiceInfo>? data})
      : _data = data;

  factory _$ServiceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  final List<ServiceInfo>? _data;
  @override
  List<ServiceInfo>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ServiceResponse(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceResponseImplCopyWith<_$ServiceResponseImpl> get copyWith =>
      __$$ServiceResponseImplCopyWithImpl<_$ServiceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceResponseImplToJson(
      this,
    );
  }
}

abstract class _ServiceResponse implements ServiceResponse {
  factory _ServiceResponse(
      {required final int code,
      required final String message,
      required final List<ServiceInfo>? data}) = _$ServiceResponseImpl;

  factory _ServiceResponse.fromJson(Map<String, dynamic> json) =
      _$ServiceResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  List<ServiceInfo>? get data;

  /// Create a copy of ServiceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceResponseImplCopyWith<_$ServiceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
