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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

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
    LoginRequest value,
    $Res Function(LoginRequest) then,
  ) = _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
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
  $Res call({Object? app_os = null, Object? name = null, Object? pwd = null}) {
    return _then(
      _value.copyWith(
            app_os:
                null == app_os
                    ? _value.app_os
                    : app_os // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            pwd:
                null == pwd
                    ? _value.pwd
                    : pwd // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
    _$LoginRequestImpl value,
    $Res Function(_$LoginRequestImpl) then,
  ) = __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int app_os, String name, String pwd});
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
    _$LoginRequestImpl _value,
    $Res Function(_$LoginRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? app_os = null, Object? name = null, Object? pwd = null}) {
    return _then(
      _$LoginRequestImpl(
        app_os:
            null == app_os
                ? _value.app_os
                : app_os // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        pwd:
            null == pwd
                ? _value.pwd
                : pwd // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  _$LoginRequestImpl({
    required this.app_os,
    required this.name,
    required this.pwd,
  });

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
    return _$$LoginRequestImplToJson(this);
  }
}

abstract class _LoginRequest implements LoginRequest {
  factory _LoginRequest({
    required final int app_os,
    required final String name,
    required final String pwd,
  }) = _$LoginRequestImpl;

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
  $Res call({
    String? login_token,
    String? gateway_token,
    String? reset_pwd_token,
    String? need_conf_security,
  });
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
    return _then(
      _value.copyWith(
            login_token:
                freezed == login_token
                    ? _value.login_token
                    : login_token // ignore: cast_nullable_to_non_nullable
                        as String?,
            gateway_token:
                freezed == gateway_token
                    ? _value.gateway_token
                    : gateway_token // ignore: cast_nullable_to_non_nullable
                        as String?,
            reset_pwd_token:
                freezed == reset_pwd_token
                    ? _value.reset_pwd_token
                    : reset_pwd_token // ignore: cast_nullable_to_non_nullable
                        as String?,
            need_conf_security:
                freezed == need_conf_security
                    ? _value.need_conf_security
                    : need_conf_security // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginDataImplCopyWith<$Res>
    implements $LoginDataCopyWith<$Res> {
  factory _$$LoginDataImplCopyWith(
    _$LoginDataImpl value,
    $Res Function(_$LoginDataImpl) then,
  ) = __$$LoginDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? login_token,
    String? gateway_token,
    String? reset_pwd_token,
    String? need_conf_security,
  });
}

/// @nodoc
class __$$LoginDataImplCopyWithImpl<$Res>
    extends _$LoginDataCopyWithImpl<$Res, _$LoginDataImpl>
    implements _$$LoginDataImplCopyWith<$Res> {
  __$$LoginDataImplCopyWithImpl(
    _$LoginDataImpl _value,
    $Res Function(_$LoginDataImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$LoginDataImpl(
        login_token:
            freezed == login_token
                ? _value.login_token
                : login_token // ignore: cast_nullable_to_non_nullable
                    as String?,
        gateway_token:
            freezed == gateway_token
                ? _value.gateway_token
                : gateway_token // ignore: cast_nullable_to_non_nullable
                    as String?,
        reset_pwd_token:
            freezed == reset_pwd_token
                ? _value.reset_pwd_token
                : reset_pwd_token // ignore: cast_nullable_to_non_nullable
                    as String?,
        need_conf_security:
            freezed == need_conf_security
                ? _value.need_conf_security
                : need_conf_security // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginDataImpl implements _LoginData {
  _$LoginDataImpl({
    required this.login_token,
    required this.gateway_token,
    required this.reset_pwd_token,
    required this.need_conf_security,
  });

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
  int get hashCode => Object.hash(
    runtimeType,
    login_token,
    gateway_token,
    reset_pwd_token,
    need_conf_security,
  );

  /// Create a copy of LoginData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginDataImplCopyWith<_$LoginDataImpl> get copyWith =>
      __$$LoginDataImplCopyWithImpl<_$LoginDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginDataImplToJson(this);
  }
}

abstract class _LoginData implements LoginData {
  factory _LoginData({
    required final String? login_token,
    required final String? gateway_token,
    required final String? reset_pwd_token,
    required final String? need_conf_security,
  }) = _$LoginDataImpl;

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
    LoginResponse value,
    $Res Function(LoginResponse) then,
  ) = _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
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
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as LoginData?,
          )
          as $Val,
    );
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
    _$LoginResponseImpl value,
    $Res Function(_$LoginResponseImpl) then,
  ) = __$$LoginResponseImplCopyWithImpl<$Res>;
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
    _$LoginResponseImpl _value,
    $Res Function(_$LoginResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(
      _$LoginResponseImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as LoginData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginResponseImpl implements _LoginResponse {
  _$LoginResponseImpl({
    required this.code,
    required this.message,
    required this.data,
  });

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
    return _$$LoginResponseImplToJson(this);
  }
}

abstract class _LoginResponse implements LoginResponse {
  factory _LoginResponse({
    required final int code,
    required final String message,
    required final LoginData? data,
  }) = _$LoginResponseImpl;

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
    UserImageRequest value,
    $Res Function(UserImageRequest) then,
  ) = _$UserImageRequestCopyWithImpl<$Res, UserImageRequest>;
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
  $Res call({Object? loginToken = null}) {
    return _then(
      _value.copyWith(
            loginToken:
                null == loginToken
                    ? _value.loginToken
                    : loginToken // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImageRequestImplCopyWith<$Res>
    implements $UserImageRequestCopyWith<$Res> {
  factory _$$UserImageRequestImplCopyWith(
    _$UserImageRequestImpl value,
    $Res Function(_$UserImageRequestImpl) then,
  ) = __$$UserImageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loginToken});
}

/// @nodoc
class __$$UserImageRequestImplCopyWithImpl<$Res>
    extends _$UserImageRequestCopyWithImpl<$Res, _$UserImageRequestImpl>
    implements _$$UserImageRequestImplCopyWith<$Res> {
  __$$UserImageRequestImplCopyWithImpl(
    _$UserImageRequestImpl _value,
    $Res Function(_$UserImageRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserImageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? loginToken = null}) {
    return _then(
      _$UserImageRequestImpl(
        loginToken:
            null == loginToken
                ? _value.loginToken
                : loginToken // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
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
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageRequestImplToJson(this);
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
    UserImageData value,
    $Res Function(UserImageData) then,
  ) = _$UserImageDataCopyWithImpl<$Res, UserImageData>;
  @useResult
  $Res call({
    String? zp,
    String? xykh,
    String? rylb,
    String? zpbbh,
    String? rn,
  });
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
    return _then(
      _value.copyWith(
            zp:
                freezed == zp
                    ? _value.zp
                    : zp // ignore: cast_nullable_to_non_nullable
                        as String?,
            xykh:
                freezed == xykh
                    ? _value.xykh
                    : xykh // ignore: cast_nullable_to_non_nullable
                        as String?,
            rylb:
                freezed == rylb
                    ? _value.rylb
                    : rylb // ignore: cast_nullable_to_non_nullable
                        as String?,
            zpbbh:
                freezed == zpbbh
                    ? _value.zpbbh
                    : zpbbh // ignore: cast_nullable_to_non_nullable
                        as String?,
            rn:
                freezed == rn
                    ? _value.rn
                    : rn // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserImageDataImplCopyWith<$Res>
    implements $UserImageDataCopyWith<$Res> {
  factory _$$UserImageDataImplCopyWith(
    _$UserImageDataImpl value,
    $Res Function(_$UserImageDataImpl) then,
  ) = __$$UserImageDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? zp,
    String? xykh,
    String? rylb,
    String? zpbbh,
    String? rn,
  });
}

/// @nodoc
class __$$UserImageDataImplCopyWithImpl<$Res>
    extends _$UserImageDataCopyWithImpl<$Res, _$UserImageDataImpl>
    implements _$$UserImageDataImplCopyWith<$Res> {
  __$$UserImageDataImplCopyWithImpl(
    _$UserImageDataImpl _value,
    $Res Function(_$UserImageDataImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$UserImageDataImpl(
        zp:
            freezed == zp
                ? _value.zp
                : zp // ignore: cast_nullable_to_non_nullable
                    as String?,
        xykh:
            freezed == xykh
                ? _value.xykh
                : xykh // ignore: cast_nullable_to_non_nullable
                    as String?,
        rylb:
            freezed == rylb
                ? _value.rylb
                : rylb // ignore: cast_nullable_to_non_nullable
                    as String?,
        zpbbh:
            freezed == zpbbh
                ? _value.zpbbh
                : zpbbh // ignore: cast_nullable_to_non_nullable
                    as String?,
        rn:
            freezed == rn
                ? _value.rn
                : rn // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageDataImpl implements _UserImageData {
  _$UserImageDataImpl({
    required this.zp,
    required this.xykh,
    required this.rylb,
    required this.zpbbh,
    required this.rn,
  });

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
    return _$$UserImageDataImplToJson(this);
  }
}

abstract class _UserImageData implements UserImageData {
  factory _UserImageData({
    required final String? zp,
    required final String? xykh,
    required final String? rylb,
    required final String? zpbbh,
    required final String? rn,
  }) = _$UserImageDataImpl;

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
    UserImageResponse value,
    $Res Function(UserImageResponse) then,
  ) = _$UserImageResponseCopyWithImpl<$Res, UserImageResponse>;
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
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as UserImageData?,
          )
          as $Val,
    );
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
  factory _$$UserImageResponseImplCopyWith(
    _$UserImageResponseImpl value,
    $Res Function(_$UserImageResponseImpl) then,
  ) = __$$UserImageResponseImplCopyWithImpl<$Res>;
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
  __$$UserImageResponseImplCopyWithImpl(
    _$UserImageResponseImpl _value,
    $Res Function(_$UserImageResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserImageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(
      _$UserImageResponseImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as UserImageData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImageResponseImpl implements _UserImageResponse {
  _$UserImageResponseImpl({
    required this.code,
    required this.message,
    required this.data,
  });

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
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImageResponseImplToJson(this);
  }
}

abstract class _UserImageResponse implements UserImageResponse {
  factory _UserImageResponse({
    required final int code,
    required final String message,
    required final UserImageData? data,
  }) = _$UserImageResponseImpl;

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
    UserInfoRequest value,
    $Res Function(UserInfoRequest) then,
  ) = _$UserInfoRequestCopyWithImpl<$Res, UserInfoRequest>;
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
  $Res call({Object? loginToken = null}) {
    return _then(
      _value.copyWith(
            loginToken:
                null == loginToken
                    ? _value.loginToken
                    : loginToken // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInfoRequestImplCopyWith<$Res>
    implements $UserInfoRequestCopyWith<$Res> {
  factory _$$UserInfoRequestImplCopyWith(
    _$UserInfoRequestImpl value,
    $Res Function(_$UserInfoRequestImpl) then,
  ) = __$$UserInfoRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loginToken});
}

/// @nodoc
class __$$UserInfoRequestImplCopyWithImpl<$Res>
    extends _$UserInfoRequestCopyWithImpl<$Res, _$UserInfoRequestImpl>
    implements _$$UserInfoRequestImplCopyWith<$Res> {
  __$$UserInfoRequestImplCopyWithImpl(
    _$UserInfoRequestImpl _value,
    $Res Function(_$UserInfoRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInfoRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? loginToken = null}) {
    return _then(
      _$UserInfoRequestImpl(
        loginToken:
            null == loginToken
                ? _value.loginToken
                : loginToken // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
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
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoRequestImplToJson(this);
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
    UserInfoData value,
    $Res Function(UserInfoData) then,
  ) = _$UserInfoDataCopyWithImpl<$Res, UserInfoData>;
  @useResult
  $Res call({
    String? xtid,
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
    String? gxqm,
  });
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
    return _then(
      _value.copyWith(
            xtid:
                freezed == xtid
                    ? _value.xtid
                    : xtid // ignore: cast_nullable_to_non_nullable
                        as String?,
            rylbm:
                freezed == rylbm
                    ? _value.rylbm
                    : rylbm // ignore: cast_nullable_to_non_nullable
                        as String?,
            rylb:
                freezed == rylb
                    ? _value.rylb
                    : rylb // ignore: cast_nullable_to_non_nullable
                        as String?,
            xykh:
                freezed == xykh
                    ? _value.xykh
                    : xykh // ignore: cast_nullable_to_non_nullable
                        as String?,
            rybh:
                freezed == rybh
                    ? _value.rybh
                    : rybh // ignore: cast_nullable_to_non_nullable
                        as String?,
            xm:
                freezed == xm
                    ? _value.xm
                    : xm // ignore: cast_nullable_to_non_nullable
                        as String?,
            xmpy:
                freezed == xmpy
                    ? _value.xmpy
                    : xmpy // ignore: cast_nullable_to_non_nullable
                        as String?,
            dwh:
                freezed == dwh
                    ? _value.dwh
                    : dwh // ignore: cast_nullable_to_non_nullable
                        as String?,
            dwmc:
                freezed == dwmc
                    ? _value.dwmc
                    : dwmc // ignore: cast_nullable_to_non_nullable
                        as String?,
            xbm:
                freezed == xbm
                    ? _value.xbm
                    : xbm // ignore: cast_nullable_to_non_nullable
                        as String?,
            dqztm:
                freezed == dqztm
                    ? _value.dqztm
                    : dqztm // ignore: cast_nullable_to_non_nullable
                        as String?,
            dqzt:
                freezed == dqzt
                    ? _value.dqzt
                    : dqzt // ignore: cast_nullable_to_non_nullable
                        as String?,
            sfzjlxm:
                freezed == sfzjlxm
                    ? _value.sfzjlxm
                    : sfzjlxm // ignore: cast_nullable_to_non_nullable
                        as String?,
            sfzjh:
                freezed == sfzjh
                    ? _value.sfzjh
                    : sfzjh // ignore: cast_nullable_to_non_nullable
                        as String?,
            csrq:
                freezed == csrq
                    ? _value.csrq
                    : csrq // ignore: cast_nullable_to_non_nullable
                        as String?,
            mzm:
                freezed == mzm
                    ? _value.mzm
                    : mzm // ignore: cast_nullable_to_non_nullable
                        as String?,
            mz:
                freezed == mz
                    ? _value.mz
                    : mz // ignore: cast_nullable_to_non_nullable
                        as String?,
            zzmmm:
                freezed == zzmmm
                    ? _value.zzmmm
                    : zzmmm // ignore: cast_nullable_to_non_nullable
                        as String?,
            jxrq:
                freezed == jxrq
                    ? _value.jxrq
                    : jxrq // ignore: cast_nullable_to_non_nullable
                        as String?,
            gjdqm:
                freezed == gjdqm
                    ? _value.gjdqm
                    : gjdqm // ignore: cast_nullable_to_non_nullable
                        as String?,
            csdm:
                freezed == csdm
                    ? _value.csdm
                    : csdm // ignore: cast_nullable_to_non_nullable
                        as String?,
            jg:
                freezed == jg
                    ? _value.jg
                    : jg // ignore: cast_nullable_to_non_nullable
                        as String?,
            yddh:
                freezed == yddh
                    ? _value.yddh
                    : yddh // ignore: cast_nullable_to_non_nullable
                        as String?,
            dzxx:
                freezed == dzxx
                    ? _value.dzxx
                    : dzxx // ignore: cast_nullable_to_non_nullable
                        as String?,
            sfzx:
                freezed == sfzx
                    ? _value.sfzx
                    : sfzx // ignore: cast_nullable_to_non_nullable
                        as String?,
            sfxj:
                freezed == sfxj
                    ? _value.sfxj
                    : sfxj // ignore: cast_nullable_to_non_nullable
                        as String?,
            bz:
                freezed == bz
                    ? _value.bz
                    : bz // ignore: cast_nullable_to_non_nullable
                        as String?,
            zhgxsj:
                freezed == zhgxsj
                    ? _value.zhgxsj
                    : zhgxsj // ignore: cast_nullable_to_non_nullable
                        as String?,
            xb:
                freezed == xb
                    ? _value.xb
                    : xb // ignore: cast_nullable_to_non_nullable
                        as String?,
            etong_acc_no:
                freezed == etong_acc_no
                    ? _value.etong_acc_no
                    : etong_acc_no // ignore: cast_nullable_to_non_nullable
                        as String?,
            wxh:
                freezed == wxh
                    ? _value.wxh
                    : wxh // ignore: cast_nullable_to_non_nullable
                        as String?,
            nc:
                freezed == nc
                    ? _value.nc
                    : nc // ignore: cast_nullable_to_non_nullable
                        as String?,
            gxqm:
                freezed == gxqm
                    ? _value.gxqm
                    : gxqm // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserInfoDataImplCopyWith<$Res>
    implements $UserInfoDataCopyWith<$Res> {
  factory _$$UserInfoDataImplCopyWith(
    _$UserInfoDataImpl value,
    $Res Function(_$UserInfoDataImpl) then,
  ) = __$$UserInfoDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? xtid,
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
    String? gxqm,
  });
}

/// @nodoc
class __$$UserInfoDataImplCopyWithImpl<$Res>
    extends _$UserInfoDataCopyWithImpl<$Res, _$UserInfoDataImpl>
    implements _$$UserInfoDataImplCopyWith<$Res> {
  __$$UserInfoDataImplCopyWithImpl(
    _$UserInfoDataImpl _value,
    $Res Function(_$UserInfoDataImpl) _then,
  ) : super(_value, _then);

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
    return _then(
      _$UserInfoDataImpl(
        xtid:
            freezed == xtid
                ? _value.xtid
                : xtid // ignore: cast_nullable_to_non_nullable
                    as String?,
        rylbm:
            freezed == rylbm
                ? _value.rylbm
                : rylbm // ignore: cast_nullable_to_non_nullable
                    as String?,
        rylb:
            freezed == rylb
                ? _value.rylb
                : rylb // ignore: cast_nullable_to_non_nullable
                    as String?,
        xykh:
            freezed == xykh
                ? _value.xykh
                : xykh // ignore: cast_nullable_to_non_nullable
                    as String?,
        rybh:
            freezed == rybh
                ? _value.rybh
                : rybh // ignore: cast_nullable_to_non_nullable
                    as String?,
        xm:
            freezed == xm
                ? _value.xm
                : xm // ignore: cast_nullable_to_non_nullable
                    as String?,
        xmpy:
            freezed == xmpy
                ? _value.xmpy
                : xmpy // ignore: cast_nullable_to_non_nullable
                    as String?,
        dwh:
            freezed == dwh
                ? _value.dwh
                : dwh // ignore: cast_nullable_to_non_nullable
                    as String?,
        dwmc:
            freezed == dwmc
                ? _value.dwmc
                : dwmc // ignore: cast_nullable_to_non_nullable
                    as String?,
        xbm:
            freezed == xbm
                ? _value.xbm
                : xbm // ignore: cast_nullable_to_non_nullable
                    as String?,
        dqztm:
            freezed == dqztm
                ? _value.dqztm
                : dqztm // ignore: cast_nullable_to_non_nullable
                    as String?,
        dqzt:
            freezed == dqzt
                ? _value.dqzt
                : dqzt // ignore: cast_nullable_to_non_nullable
                    as String?,
        sfzjlxm:
            freezed == sfzjlxm
                ? _value.sfzjlxm
                : sfzjlxm // ignore: cast_nullable_to_non_nullable
                    as String?,
        sfzjh:
            freezed == sfzjh
                ? _value.sfzjh
                : sfzjh // ignore: cast_nullable_to_non_nullable
                    as String?,
        csrq:
            freezed == csrq
                ? _value.csrq
                : csrq // ignore: cast_nullable_to_non_nullable
                    as String?,
        mzm:
            freezed == mzm
                ? _value.mzm
                : mzm // ignore: cast_nullable_to_non_nullable
                    as String?,
        mz:
            freezed == mz
                ? _value.mz
                : mz // ignore: cast_nullable_to_non_nullable
                    as String?,
        zzmmm:
            freezed == zzmmm
                ? _value.zzmmm
                : zzmmm // ignore: cast_nullable_to_non_nullable
                    as String?,
        jxrq:
            freezed == jxrq
                ? _value.jxrq
                : jxrq // ignore: cast_nullable_to_non_nullable
                    as String?,
        gjdqm:
            freezed == gjdqm
                ? _value.gjdqm
                : gjdqm // ignore: cast_nullable_to_non_nullable
                    as String?,
        csdm:
            freezed == csdm
                ? _value.csdm
                : csdm // ignore: cast_nullable_to_non_nullable
                    as String?,
        jg:
            freezed == jg
                ? _value.jg
                : jg // ignore: cast_nullable_to_non_nullable
                    as String?,
        yddh:
            freezed == yddh
                ? _value.yddh
                : yddh // ignore: cast_nullable_to_non_nullable
                    as String?,
        dzxx:
            freezed == dzxx
                ? _value.dzxx
                : dzxx // ignore: cast_nullable_to_non_nullable
                    as String?,
        sfzx:
            freezed == sfzx
                ? _value.sfzx
                : sfzx // ignore: cast_nullable_to_non_nullable
                    as String?,
        sfxj:
            freezed == sfxj
                ? _value.sfxj
                : sfxj // ignore: cast_nullable_to_non_nullable
                    as String?,
        bz:
            freezed == bz
                ? _value.bz
                : bz // ignore: cast_nullable_to_non_nullable
                    as String?,
        zhgxsj:
            freezed == zhgxsj
                ? _value.zhgxsj
                : zhgxsj // ignore: cast_nullable_to_non_nullable
                    as String?,
        xb:
            freezed == xb
                ? _value.xb
                : xb // ignore: cast_nullable_to_non_nullable
                    as String?,
        etong_acc_no:
            freezed == etong_acc_no
                ? _value.etong_acc_no
                : etong_acc_no // ignore: cast_nullable_to_non_nullable
                    as String?,
        wxh:
            freezed == wxh
                ? _value.wxh
                : wxh // ignore: cast_nullable_to_non_nullable
                    as String?,
        nc:
            freezed == nc
                ? _value.nc
                : nc // ignore: cast_nullable_to_non_nullable
                    as String?,
        gxqm:
            freezed == gxqm
                ? _value.gxqm
                : gxqm // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoDataImpl implements _UserInfoData {
  _$UserInfoDataImpl({
    required this.xtid,
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
    required this.gxqm,
  });

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
    gxqm,
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
    return _$$UserInfoDataImplToJson(this);
  }
}

abstract class _UserInfoData implements UserInfoData {
  factory _UserInfoData({
    required final String? xtid,
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
    required final String? gxqm,
  }) = _$UserInfoDataImpl;

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
    UserInfoResponse value,
    $Res Function(UserInfoResponse) then,
  ) = _$UserInfoResponseCopyWithImpl<$Res, UserInfoResponse>;
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
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as UserInfoData?,
          )
          as $Val,
    );
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
  factory _$$UserInfoResponseImplCopyWith(
    _$UserInfoResponseImpl value,
    $Res Function(_$UserInfoResponseImpl) then,
  ) = __$$UserInfoResponseImplCopyWithImpl<$Res>;
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
  __$$UserInfoResponseImplCopyWithImpl(
    _$UserInfoResponseImpl _value,
    $Res Function(_$UserInfoResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(
      _$UserInfoResponseImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as UserInfoData?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoResponseImpl implements _UserInfoResponse {
  _$UserInfoResponseImpl({
    required this.code,
    required this.message,
    required this.data,
  });

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
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoResponseImplToJson(this);
  }
}

abstract class _UserInfoResponse implements UserInfoResponse {
  factory _UserInfoResponse({
    required final int code,
    required final String message,
    required final UserInfoData? data,
  }) = _$UserInfoResponseImpl;

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
    StringDataResponse value,
    $Res Function(StringDataResponse) then,
  ) = _$StringDataResponseCopyWithImpl<$Res, StringDataResponse>;
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
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            data:
                freezed == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StringDataResponseImplCopyWith<$Res>
    implements $StringDataResponseCopyWith<$Res> {
  factory _$$StringDataResponseImplCopyWith(
    _$StringDataResponseImpl value,
    $Res Function(_$StringDataResponseImpl) then,
  ) = __$$StringDataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, String? data});
}

/// @nodoc
class __$$StringDataResponseImplCopyWithImpl<$Res>
    extends _$StringDataResponseCopyWithImpl<$Res, _$StringDataResponseImpl>
    implements _$$StringDataResponseImplCopyWith<$Res> {
  __$$StringDataResponseImplCopyWithImpl(
    _$StringDataResponseImpl _value,
    $Res Function(_$StringDataResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StringDataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(
      _$StringDataResponseImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        data:
            freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StringDataResponseImpl implements _StringDataResponse {
  _$StringDataResponseImpl({
    required this.code,
    required this.message,
    required this.data,
  });

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
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$StringDataResponseImplToJson(this);
  }
}

abstract class _StringDataResponse implements StringDataResponse {
  factory _StringDataResponse({
    required final int code,
    required final String message,
    required final String? data,
  }) = _$StringDataResponseImpl;

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
