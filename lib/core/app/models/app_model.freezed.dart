// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EtTokenResponse _$EtTokenResponseFromJson(Map<String, dynamic> json) {
  return _EtTokenResponse.fromJson(json);
}

/// @nodoc
mixin _$EtTokenResponse {
  String get msg => throw _privateConstructorUsedError;
  String? get accNum => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  /// Serializes this EtTokenResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EtTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EtTokenResponseCopyWith<EtTokenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EtTokenResponseCopyWith<$Res> {
  factory $EtTokenResponseCopyWith(
          EtTokenResponse value, $Res Function(EtTokenResponse) then) =
      _$EtTokenResponseCopyWithImpl<$Res, EtTokenResponse>;
  @useResult
  $Res call({String msg, String? accNum, int code, String? token});
}

/// @nodoc
class _$EtTokenResponseCopyWithImpl<$Res, $Val extends EtTokenResponse>
    implements $EtTokenResponseCopyWith<$Res> {
  _$EtTokenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EtTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? accNum = freezed,
    Object? code = null,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      accNum: freezed == accNum
          ? _value.accNum
          : accNum // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EtTokenResponseImplCopyWith<$Res>
    implements $EtTokenResponseCopyWith<$Res> {
  factory _$$EtTokenResponseImplCopyWith(_$EtTokenResponseImpl value,
          $Res Function(_$EtTokenResponseImpl) then) =
      __$$EtTokenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg, String? accNum, int code, String? token});
}

/// @nodoc
class __$$EtTokenResponseImplCopyWithImpl<$Res>
    extends _$EtTokenResponseCopyWithImpl<$Res, _$EtTokenResponseImpl>
    implements _$$EtTokenResponseImplCopyWith<$Res> {
  __$$EtTokenResponseImplCopyWithImpl(
      _$EtTokenResponseImpl _value, $Res Function(_$EtTokenResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EtTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? accNum = freezed,
    Object? code = null,
    Object? token = freezed,
  }) {
    return _then(_$EtTokenResponseImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      accNum: freezed == accNum
          ? _value.accNum
          : accNum // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EtTokenResponseImpl implements _EtTokenResponse {
  _$EtTokenResponseImpl(
      {required this.msg,
      required this.accNum,
      required this.code,
      required this.token});

  factory _$EtTokenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EtTokenResponseImplFromJson(json);

  @override
  final String msg;
  @override
  final String? accNum;
  @override
  final int code;
  @override
  final String? token;

  @override
  String toString() {
    return 'EtTokenResponse(msg: $msg, accNum: $accNum, code: $code, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EtTokenResponseImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.accNum, accNum) || other.accNum == accNum) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, msg, accNum, code, token);

  /// Create a copy of EtTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EtTokenResponseImplCopyWith<_$EtTokenResponseImpl> get copyWith =>
      __$$EtTokenResponseImplCopyWithImpl<_$EtTokenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EtTokenResponseImplToJson(
      this,
    );
  }
}

abstract class _EtTokenResponse implements EtTokenResponse {
  factory _EtTokenResponse(
      {required final String msg,
      required final String? accNum,
      required final int code,
      required final String? token}) = _$EtTokenResponseImpl;

  factory _EtTokenResponse.fromJson(Map<String, dynamic> json) =
      _$EtTokenResponseImpl.fromJson;

  @override
  String get msg;
  @override
  String? get accNum;
  @override
  int get code;
  @override
  String? get token;

  /// Create a copy of EtTokenResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EtTokenResponseImplCopyWith<_$EtTokenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetAccInfoResponse {
  int get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String? get cardAccNum => throw _privateConstructorUsedError;
  String? get epid => throw _privateConstructorUsedError;

  /// Create a copy of GetAccInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAccInfoResponseCopyWith<GetAccInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAccInfoResponseCopyWith<$Res> {
  factory $GetAccInfoResponseCopyWith(
          GetAccInfoResponse value, $Res Function(GetAccInfoResponse) then) =
      _$GetAccInfoResponseCopyWithImpl<$Res, GetAccInfoResponse>;
  @useResult
  $Res call({int code, String msg, String? cardAccNum, String? epid});
}

/// @nodoc
class _$GetAccInfoResponseCopyWithImpl<$Res, $Val extends GetAccInfoResponse>
    implements $GetAccInfoResponseCopyWith<$Res> {
  _$GetAccInfoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAccInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? cardAccNum = freezed,
    Object? epid = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      cardAccNum: freezed == cardAccNum
          ? _value.cardAccNum
          : cardAccNum // ignore: cast_nullable_to_non_nullable
              as String?,
      epid: freezed == epid
          ? _value.epid
          : epid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAccInfoResponseImplCopyWith<$Res>
    implements $GetAccInfoResponseCopyWith<$Res> {
  factory _$$GetAccInfoResponseImplCopyWith(_$GetAccInfoResponseImpl value,
          $Res Function(_$GetAccInfoResponseImpl) then) =
      __$$GetAccInfoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String msg, String? cardAccNum, String? epid});
}

/// @nodoc
class __$$GetAccInfoResponseImplCopyWithImpl<$Res>
    extends _$GetAccInfoResponseCopyWithImpl<$Res, _$GetAccInfoResponseImpl>
    implements _$$GetAccInfoResponseImplCopyWith<$Res> {
  __$$GetAccInfoResponseImplCopyWithImpl(_$GetAccInfoResponseImpl _value,
      $Res Function(_$GetAccInfoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetAccInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? cardAccNum = freezed,
    Object? epid = freezed,
  }) {
    return _then(_$GetAccInfoResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      cardAccNum: freezed == cardAccNum
          ? _value.cardAccNum
          : cardAccNum // ignore: cast_nullable_to_non_nullable
              as String?,
      epid: freezed == epid
          ? _value.epid
          : epid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetAccInfoResponseImpl implements _GetAccInfoResponse {
  _$GetAccInfoResponseImpl(
      {required this.code,
      required this.msg,
      required this.cardAccNum,
      required this.epid});

  @override
  final int code;
  @override
  final String msg;
  @override
  final String? cardAccNum;
  @override
  final String? epid;

  @override
  String toString() {
    return 'GetAccInfoResponse(code: $code, msg: $msg, cardAccNum: $cardAccNum, epid: $epid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAccInfoResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.cardAccNum, cardAccNum) ||
                other.cardAccNum == cardAccNum) &&
            (identical(other.epid, epid) || other.epid == epid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, msg, cardAccNum, epid);

  /// Create a copy of GetAccInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAccInfoResponseImplCopyWith<_$GetAccInfoResponseImpl> get copyWith =>
      __$$GetAccInfoResponseImplCopyWithImpl<_$GetAccInfoResponseImpl>(
          this, _$identity);
}

abstract class _GetAccInfoResponse implements GetAccInfoResponse {
  factory _GetAccInfoResponse(
      {required final int code,
      required final String msg,
      required final String? cardAccNum,
      required final String? epid}) = _$GetAccInfoResponseImpl;

  @override
  int get code;
  @override
  String get msg;
  @override
  String? get cardAccNum;
  @override
  String? get epid;

  /// Create a copy of GetAccInfoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAccInfoResponseImplCopyWith<_$GetAccInfoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WalletInfo {
  String get cardName => throw _privateConstructorUsedError;
  String get cardAccNum => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  String get walletMoney => throw _privateConstructorUsedError;
  String get walletName => throw _privateConstructorUsedError;
  String get isWithdraw => throw _privateConstructorUsedError;
  String get moneyMax => throw _privateConstructorUsedError;
  String get monTemp => throw _privateConstructorUsedError;
  String get monCard => throw _privateConstructorUsedError;
  String get walletNum => throw _privateConstructorUsedError;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WalletInfoCopyWith<WalletInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInfoCopyWith<$Res> {
  factory $WalletInfoCopyWith(
          WalletInfo value, $Res Function(WalletInfo) then) =
      _$WalletInfoCopyWithImpl<$Res, WalletInfo>;
  @useResult
  $Res call(
      {String cardName,
      String cardAccNum,
      String unit,
      String walletMoney,
      String walletName,
      String isWithdraw,
      String moneyMax,
      String monTemp,
      String monCard,
      String walletNum});
}

/// @nodoc
class _$WalletInfoCopyWithImpl<$Res, $Val extends WalletInfo>
    implements $WalletInfoCopyWith<$Res> {
  _$WalletInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardAccNum = null,
    Object? unit = null,
    Object? walletMoney = null,
    Object? walletName = null,
    Object? isWithdraw = null,
    Object? moneyMax = null,
    Object? monTemp = null,
    Object? monCard = null,
    Object? walletNum = null,
  }) {
    return _then(_value.copyWith(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardAccNum: null == cardAccNum
          ? _value.cardAccNum
          : cardAccNum // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      walletMoney: null == walletMoney
          ? _value.walletMoney
          : walletMoney // ignore: cast_nullable_to_non_nullable
              as String,
      walletName: null == walletName
          ? _value.walletName
          : walletName // ignore: cast_nullable_to_non_nullable
              as String,
      isWithdraw: null == isWithdraw
          ? _value.isWithdraw
          : isWithdraw // ignore: cast_nullable_to_non_nullable
              as String,
      moneyMax: null == moneyMax
          ? _value.moneyMax
          : moneyMax // ignore: cast_nullable_to_non_nullable
              as String,
      monTemp: null == monTemp
          ? _value.monTemp
          : monTemp // ignore: cast_nullable_to_non_nullable
              as String,
      monCard: null == monCard
          ? _value.monCard
          : monCard // ignore: cast_nullable_to_non_nullable
              as String,
      walletNum: null == walletNum
          ? _value.walletNum
          : walletNum // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WalletInfoImplCopyWith<$Res>
    implements $WalletInfoCopyWith<$Res> {
  factory _$$WalletInfoImplCopyWith(
          _$WalletInfoImpl value, $Res Function(_$WalletInfoImpl) then) =
      __$$WalletInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardName,
      String cardAccNum,
      String unit,
      String walletMoney,
      String walletName,
      String isWithdraw,
      String moneyMax,
      String monTemp,
      String monCard,
      String walletNum});
}

/// @nodoc
class __$$WalletInfoImplCopyWithImpl<$Res>
    extends _$WalletInfoCopyWithImpl<$Res, _$WalletInfoImpl>
    implements _$$WalletInfoImplCopyWith<$Res> {
  __$$WalletInfoImplCopyWithImpl(
      _$WalletInfoImpl _value, $Res Function(_$WalletInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardAccNum = null,
    Object? unit = null,
    Object? walletMoney = null,
    Object? walletName = null,
    Object? isWithdraw = null,
    Object? moneyMax = null,
    Object? monTemp = null,
    Object? monCard = null,
    Object? walletNum = null,
  }) {
    return _then(_$WalletInfoImpl(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardAccNum: null == cardAccNum
          ? _value.cardAccNum
          : cardAccNum // ignore: cast_nullable_to_non_nullable
              as String,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      walletMoney: null == walletMoney
          ? _value.walletMoney
          : walletMoney // ignore: cast_nullable_to_non_nullable
              as String,
      walletName: null == walletName
          ? _value.walletName
          : walletName // ignore: cast_nullable_to_non_nullable
              as String,
      isWithdraw: null == isWithdraw
          ? _value.isWithdraw
          : isWithdraw // ignore: cast_nullable_to_non_nullable
              as String,
      moneyMax: null == moneyMax
          ? _value.moneyMax
          : moneyMax // ignore: cast_nullable_to_non_nullable
              as String,
      monTemp: null == monTemp
          ? _value.monTemp
          : monTemp // ignore: cast_nullable_to_non_nullable
              as String,
      monCard: null == monCard
          ? _value.monCard
          : monCard // ignore: cast_nullable_to_non_nullable
              as String,
      walletNum: null == walletNum
          ? _value.walletNum
          : walletNum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WalletInfoImpl implements _WalletInfo {
  _$WalletInfoImpl(
      {required this.cardName,
      required this.cardAccNum,
      required this.unit,
      required this.walletMoney,
      required this.walletName,
      required this.isWithdraw,
      required this.moneyMax,
      required this.monTemp,
      required this.monCard,
      required this.walletNum});

  @override
  final String cardName;
  @override
  final String cardAccNum;
  @override
  final String unit;
  @override
  final String walletMoney;
  @override
  final String walletName;
  @override
  final String isWithdraw;
  @override
  final String moneyMax;
  @override
  final String monTemp;
  @override
  final String monCard;
  @override
  final String walletNum;

  @override
  String toString() {
    return 'WalletInfo(cardName: $cardName, cardAccNum: $cardAccNum, unit: $unit, walletMoney: $walletMoney, walletName: $walletName, isWithdraw: $isWithdraw, moneyMax: $moneyMax, monTemp: $monTemp, monCard: $monCard, walletNum: $walletNum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInfoImpl &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.cardAccNum, cardAccNum) ||
                other.cardAccNum == cardAccNum) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.walletMoney, walletMoney) ||
                other.walletMoney == walletMoney) &&
            (identical(other.walletName, walletName) ||
                other.walletName == walletName) &&
            (identical(other.isWithdraw, isWithdraw) ||
                other.isWithdraw == isWithdraw) &&
            (identical(other.moneyMax, moneyMax) ||
                other.moneyMax == moneyMax) &&
            (identical(other.monTemp, monTemp) || other.monTemp == monTemp) &&
            (identical(other.monCard, monCard) || other.monCard == monCard) &&
            (identical(other.walletNum, walletNum) ||
                other.walletNum == walletNum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cardName,
      cardAccNum,
      unit,
      walletMoney,
      walletName,
      isWithdraw,
      moneyMax,
      monTemp,
      monCard,
      walletNum);

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      __$$WalletInfoImplCopyWithImpl<_$WalletInfoImpl>(this, _$identity);
}

abstract class _WalletInfo implements WalletInfo {
  factory _WalletInfo(
      {required final String cardName,
      required final String cardAccNum,
      required final String unit,
      required final String walletMoney,
      required final String walletName,
      required final String isWithdraw,
      required final String moneyMax,
      required final String monTemp,
      required final String monCard,
      required final String walletNum}) = _$WalletInfoImpl;

  @override
  String get cardName;
  @override
  String get cardAccNum;
  @override
  String get unit;
  @override
  String get walletMoney;
  @override
  String get walletName;
  @override
  String get isWithdraw;
  @override
  String get moneyMax;
  @override
  String get monTemp;
  @override
  String get monCard;
  @override
  String get walletNum;

  /// Create a copy of WalletInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WalletInfoImplCopyWith<_$WalletInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetWalletMoneyResponse {
  int get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<WalletInfo> get wallets => throw _privateConstructorUsedError;

  /// Create a copy of GetWalletMoneyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetWalletMoneyResponseCopyWith<GetWalletMoneyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetWalletMoneyResponseCopyWith<$Res> {
  factory $GetWalletMoneyResponseCopyWith(GetWalletMoneyResponse value,
          $Res Function(GetWalletMoneyResponse) then) =
      _$GetWalletMoneyResponseCopyWithImpl<$Res, GetWalletMoneyResponse>;
  @useResult
  $Res call({int code, String msg, List<WalletInfo> wallets});
}

/// @nodoc
class _$GetWalletMoneyResponseCopyWithImpl<$Res,
        $Val extends GetWalletMoneyResponse>
    implements $GetWalletMoneyResponseCopyWith<$Res> {
  _$GetWalletMoneyResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetWalletMoneyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? wallets = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      wallets: null == wallets
          ? _value.wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletInfo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetWalletMoneyResponseImplCopyWith<$Res>
    implements $GetWalletMoneyResponseCopyWith<$Res> {
  factory _$$GetWalletMoneyResponseImplCopyWith(
          _$GetWalletMoneyResponseImpl value,
          $Res Function(_$GetWalletMoneyResponseImpl) then) =
      __$$GetWalletMoneyResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String msg, List<WalletInfo> wallets});
}

/// @nodoc
class __$$GetWalletMoneyResponseImplCopyWithImpl<$Res>
    extends _$GetWalletMoneyResponseCopyWithImpl<$Res,
        _$GetWalletMoneyResponseImpl>
    implements _$$GetWalletMoneyResponseImplCopyWith<$Res> {
  __$$GetWalletMoneyResponseImplCopyWithImpl(
      _$GetWalletMoneyResponseImpl _value,
      $Res Function(_$GetWalletMoneyResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetWalletMoneyResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? wallets = null,
  }) {
    return _then(_$GetWalletMoneyResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      wallets: null == wallets
          ? _value._wallets
          : wallets // ignore: cast_nullable_to_non_nullable
              as List<WalletInfo>,
    ));
  }
}

/// @nodoc

class _$GetWalletMoneyResponseImpl implements _GetWalletMoneyResponse {
  _$GetWalletMoneyResponseImpl(
      {required this.code,
      required this.msg,
      required final List<WalletInfo> wallets})
      : _wallets = wallets;

  @override
  final int code;
  @override
  final String msg;
  final List<WalletInfo> _wallets;
  @override
  List<WalletInfo> get wallets {
    if (_wallets is EqualUnmodifiableListView) return _wallets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wallets);
  }

  @override
  String toString() {
    return 'GetWalletMoneyResponse(code: $code, msg: $msg, wallets: $wallets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWalletMoneyResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._wallets, _wallets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, msg, const DeepCollectionEquality().hash(_wallets));

  /// Create a copy of GetWalletMoneyResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWalletMoneyResponseImplCopyWith<_$GetWalletMoneyResponseImpl>
      get copyWith => __$$GetWalletMoneyResponseImplCopyWithImpl<
          _$GetWalletMoneyResponseImpl>(this, _$identity);
}

abstract class _GetWalletMoneyResponse implements GetWalletMoneyResponse {
  factory _GetWalletMoneyResponse(
      {required final int code,
      required final String msg,
      required final List<WalletInfo> wallets}) = _$GetWalletMoneyResponseImpl;

  @override
  int get code;
  @override
  String get msg;
  @override
  List<WalletInfo> get wallets;

  /// Create a copy of GetWalletMoneyResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetWalletMoneyResponseImplCopyWith<_$GetWalletMoneyResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GetH5QRCodeResponse _$GetH5QRCodeResponseFromJson(Map<String, dynamic> json) {
  return _GetH5QRCodeResponse.fromJson(json);
}

/// @nodoc
mixin _$GetH5QRCodeResponse {
  String? get authNum => throw _privateConstructorUsedError;
  String? get cardAccNum => throw _privateConstructorUsedError;
  String? get qRCode => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;

  /// Serializes this GetH5QRCodeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetH5QRCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetH5QRCodeResponseCopyWith<GetH5QRCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetH5QRCodeResponseCopyWith<$Res> {
  factory $GetH5QRCodeResponseCopyWith(
          GetH5QRCodeResponse value, $Res Function(GetH5QRCodeResponse) then) =
      _$GetH5QRCodeResponseCopyWithImpl<$Res, GetH5QRCodeResponse>;
  @useResult
  $Res call(
      {String? authNum,
      String? cardAccNum,
      String? qRCode,
      int code,
      String msg});
}

/// @nodoc
class _$GetH5QRCodeResponseCopyWithImpl<$Res, $Val extends GetH5QRCodeResponse>
    implements $GetH5QRCodeResponseCopyWith<$Res> {
  _$GetH5QRCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetH5QRCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authNum = freezed,
    Object? cardAccNum = freezed,
    Object? qRCode = freezed,
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      authNum: freezed == authNum
          ? _value.authNum
          : authNum // ignore: cast_nullable_to_non_nullable
              as String?,
      cardAccNum: freezed == cardAccNum
          ? _value.cardAccNum
          : cardAccNum // ignore: cast_nullable_to_non_nullable
              as String?,
      qRCode: freezed == qRCode
          ? _value.qRCode
          : qRCode // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetH5QRCodeResponseImplCopyWith<$Res>
    implements $GetH5QRCodeResponseCopyWith<$Res> {
  factory _$$GetH5QRCodeResponseImplCopyWith(_$GetH5QRCodeResponseImpl value,
          $Res Function(_$GetH5QRCodeResponseImpl) then) =
      __$$GetH5QRCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? authNum,
      String? cardAccNum,
      String? qRCode,
      int code,
      String msg});
}

/// @nodoc
class __$$GetH5QRCodeResponseImplCopyWithImpl<$Res>
    extends _$GetH5QRCodeResponseCopyWithImpl<$Res, _$GetH5QRCodeResponseImpl>
    implements _$$GetH5QRCodeResponseImplCopyWith<$Res> {
  __$$GetH5QRCodeResponseImplCopyWithImpl(_$GetH5QRCodeResponseImpl _value,
      $Res Function(_$GetH5QRCodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetH5QRCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authNum = freezed,
    Object? cardAccNum = freezed,
    Object? qRCode = freezed,
    Object? code = null,
    Object? msg = null,
  }) {
    return _then(_$GetH5QRCodeResponseImpl(
      authNum: freezed == authNum
          ? _value.authNum
          : authNum // ignore: cast_nullable_to_non_nullable
              as String?,
      cardAccNum: freezed == cardAccNum
          ? _value.cardAccNum
          : cardAccNum // ignore: cast_nullable_to_non_nullable
              as String?,
      qRCode: freezed == qRCode
          ? _value.qRCode
          : qRCode // ignore: cast_nullable_to_non_nullable
              as String?,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetH5QRCodeResponseImpl implements _GetH5QRCodeResponse {
  _$GetH5QRCodeResponseImpl(
      {required this.authNum,
      required this.cardAccNum,
      required this.qRCode,
      required this.code,
      required this.msg});

  factory _$GetH5QRCodeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetH5QRCodeResponseImplFromJson(json);

  @override
  final String? authNum;
  @override
  final String? cardAccNum;
  @override
  final String? qRCode;
  @override
  final int code;
  @override
  final String msg;

  @override
  String toString() {
    return 'GetH5QRCodeResponse(authNum: $authNum, cardAccNum: $cardAccNum, qRCode: $qRCode, code: $code, msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetH5QRCodeResponseImpl &&
            (identical(other.authNum, authNum) || other.authNum == authNum) &&
            (identical(other.cardAccNum, cardAccNum) ||
                other.cardAccNum == cardAccNum) &&
            (identical(other.qRCode, qRCode) || other.qRCode == qRCode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authNum, cardAccNum, qRCode, code, msg);

  /// Create a copy of GetH5QRCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetH5QRCodeResponseImplCopyWith<_$GetH5QRCodeResponseImpl> get copyWith =>
      __$$GetH5QRCodeResponseImplCopyWithImpl<_$GetH5QRCodeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetH5QRCodeResponseImplToJson(
      this,
    );
  }
}

abstract class _GetH5QRCodeResponse implements GetH5QRCodeResponse {
  factory _GetH5QRCodeResponse(
      {required final String? authNum,
      required final String? cardAccNum,
      required final String? qRCode,
      required final int code,
      required final String msg}) = _$GetH5QRCodeResponseImpl;

  factory _GetH5QRCodeResponse.fromJson(Map<String, dynamic> json) =
      _$GetH5QRCodeResponseImpl.fromJson;

  @override
  String? get authNum;
  @override
  String? get cardAccNum;
  @override
  String? get qRCode;
  @override
  int get code;
  @override
  String get msg;

  /// Create a copy of GetH5QRCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetH5QRCodeResponseImplCopyWith<_$GetH5QRCodeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetOrderByCodeResponse {
  int get code => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String? get compareType => throw _privateConstructorUsedError;
  String? get dealTime => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  String? get managerFee => throw _privateConstructorUsedError;
  String? get needMoney => throw _privateConstructorUsedError;
  String? get realMoney => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get walletMoney => throw _privateConstructorUsedError;
  String? get walletName => throw _privateConstructorUsedError;

  /// Create a copy of GetOrderByCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetOrderByCodeResponseCopyWith<GetOrderByCodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetOrderByCodeResponseCopyWith<$Res> {
  factory $GetOrderByCodeResponseCopyWith(GetOrderByCodeResponse value,
          $Res Function(GetOrderByCodeResponse) then) =
      _$GetOrderByCodeResponseCopyWithImpl<$Res, GetOrderByCodeResponse>;
  @useResult
  $Res call(
      {int code,
      String msg,
      String? compareType,
      String? dealTime,
      String? discount,
      String? managerFee,
      String? needMoney,
      String? realMoney,
      String? status,
      String? walletMoney,
      String? walletName});
}

/// @nodoc
class _$GetOrderByCodeResponseCopyWithImpl<$Res,
        $Val extends GetOrderByCodeResponse>
    implements $GetOrderByCodeResponseCopyWith<$Res> {
  _$GetOrderByCodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetOrderByCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? compareType = freezed,
    Object? dealTime = freezed,
    Object? discount = freezed,
    Object? managerFee = freezed,
    Object? needMoney = freezed,
    Object? realMoney = freezed,
    Object? status = freezed,
    Object? walletMoney = freezed,
    Object? walletName = freezed,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      compareType: freezed == compareType
          ? _value.compareType
          : compareType // ignore: cast_nullable_to_non_nullable
              as String?,
      dealTime: freezed == dealTime
          ? _value.dealTime
          : dealTime // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      managerFee: freezed == managerFee
          ? _value.managerFee
          : managerFee // ignore: cast_nullable_to_non_nullable
              as String?,
      needMoney: freezed == needMoney
          ? _value.needMoney
          : needMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      realMoney: freezed == realMoney
          ? _value.realMoney
          : realMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      walletMoney: freezed == walletMoney
          ? _value.walletMoney
          : walletMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      walletName: freezed == walletName
          ? _value.walletName
          : walletName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOrderByCodeResponseImplCopyWith<$Res>
    implements $GetOrderByCodeResponseCopyWith<$Res> {
  factory _$$GetOrderByCodeResponseImplCopyWith(
          _$GetOrderByCodeResponseImpl value,
          $Res Function(_$GetOrderByCodeResponseImpl) then) =
      __$$GetOrderByCodeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String msg,
      String? compareType,
      String? dealTime,
      String? discount,
      String? managerFee,
      String? needMoney,
      String? realMoney,
      String? status,
      String? walletMoney,
      String? walletName});
}

/// @nodoc
class __$$GetOrderByCodeResponseImplCopyWithImpl<$Res>
    extends _$GetOrderByCodeResponseCopyWithImpl<$Res,
        _$GetOrderByCodeResponseImpl>
    implements _$$GetOrderByCodeResponseImplCopyWith<$Res> {
  __$$GetOrderByCodeResponseImplCopyWithImpl(
      _$GetOrderByCodeResponseImpl _value,
      $Res Function(_$GetOrderByCodeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetOrderByCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? msg = null,
    Object? compareType = freezed,
    Object? dealTime = freezed,
    Object? discount = freezed,
    Object? managerFee = freezed,
    Object? needMoney = freezed,
    Object? realMoney = freezed,
    Object? status = freezed,
    Object? walletMoney = freezed,
    Object? walletName = freezed,
  }) {
    return _then(_$GetOrderByCodeResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      compareType: freezed == compareType
          ? _value.compareType
          : compareType // ignore: cast_nullable_to_non_nullable
              as String?,
      dealTime: freezed == dealTime
          ? _value.dealTime
          : dealTime // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      managerFee: freezed == managerFee
          ? _value.managerFee
          : managerFee // ignore: cast_nullable_to_non_nullable
              as String?,
      needMoney: freezed == needMoney
          ? _value.needMoney
          : needMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      realMoney: freezed == realMoney
          ? _value.realMoney
          : realMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      walletMoney: freezed == walletMoney
          ? _value.walletMoney
          : walletMoney // ignore: cast_nullable_to_non_nullable
              as String?,
      walletName: freezed == walletName
          ? _value.walletName
          : walletName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$GetOrderByCodeResponseImpl implements _GetOrderByCodeResponse {
  _$GetOrderByCodeResponseImpl(
      {required this.code,
      required this.msg,
      this.compareType,
      this.dealTime,
      this.discount,
      this.managerFee,
      this.needMoney,
      this.realMoney,
      this.status,
      this.walletMoney,
      this.walletName});

  @override
  final int code;
  @override
  final String msg;
  @override
  final String? compareType;
  @override
  final String? dealTime;
  @override
  final String? discount;
  @override
  final String? managerFee;
  @override
  final String? needMoney;
  @override
  final String? realMoney;
  @override
  final String? status;
  @override
  final String? walletMoney;
  @override
  final String? walletName;

  @override
  String toString() {
    return 'GetOrderByCodeResponse(code: $code, msg: $msg, compareType: $compareType, dealTime: $dealTime, discount: $discount, managerFee: $managerFee, needMoney: $needMoney, realMoney: $realMoney, status: $status, walletMoney: $walletMoney, walletName: $walletName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOrderByCodeResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.compareType, compareType) ||
                other.compareType == compareType) &&
            (identical(other.dealTime, dealTime) ||
                other.dealTime == dealTime) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.managerFee, managerFee) ||
                other.managerFee == managerFee) &&
            (identical(other.needMoney, needMoney) ||
                other.needMoney == needMoney) &&
            (identical(other.realMoney, realMoney) ||
                other.realMoney == realMoney) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.walletMoney, walletMoney) ||
                other.walletMoney == walletMoney) &&
            (identical(other.walletName, walletName) ||
                other.walletName == walletName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      code,
      msg,
      compareType,
      dealTime,
      discount,
      managerFee,
      needMoney,
      realMoney,
      status,
      walletMoney,
      walletName);

  /// Create a copy of GetOrderByCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOrderByCodeResponseImplCopyWith<_$GetOrderByCodeResponseImpl>
      get copyWith => __$$GetOrderByCodeResponseImplCopyWithImpl<
          _$GetOrderByCodeResponseImpl>(this, _$identity);
}

abstract class _GetOrderByCodeResponse implements GetOrderByCodeResponse {
  factory _GetOrderByCodeResponse(
      {required final int code,
      required final String msg,
      final String? compareType,
      final String? dealTime,
      final String? discount,
      final String? managerFee,
      final String? needMoney,
      final String? realMoney,
      final String? status,
      final String? walletMoney,
      final String? walletName}) = _$GetOrderByCodeResponseImpl;

  @override
  int get code;
  @override
  String get msg;
  @override
  String? get compareType;
  @override
  String? get dealTime;
  @override
  String? get discount;
  @override
  String? get managerFee;
  @override
  String? get needMoney;
  @override
  String? get realMoney;
  @override
  String? get status;
  @override
  String? get walletMoney;
  @override
  String? get walletName;

  /// Create a copy of GetOrderByCodeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOrderByCodeResponseImplCopyWith<_$GetOrderByCodeResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
