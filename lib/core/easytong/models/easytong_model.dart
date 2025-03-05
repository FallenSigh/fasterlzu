import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:xml/xml.dart';
part 'easytong_model.freezed.dart';
part 'easytong_model.g.dart';

@freezed
class EtTokenResponse with _$EtTokenResponse{
  factory EtTokenResponse({
    required String msg,
    required String? accNum,
    required int code,
    required String? token
}) = _EtTokenResponse;

  factory EtTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$EtTokenResponseFromJson(json);
}

@freezed
class GetAccInfoResponse with _$GetAccInfoResponse {
  factory GetAccInfoResponse({
    required int code,
    required String msg,
    required String? cardAccNum,
    required String? epid
}) = _GetAccInfoResponse;

  factory GetAccInfoResponse.fromXml(String x) {
    final xml = XmlDocument.parse(x);
    return GetAccInfoResponse(
      code: int.parse(xml.findAllElements('Code').first.innerText),
      msg: xml.findAllElements('Msg').first.innerText,
      cardAccNum: xml.findAllElements('CardAccNum').first.innerText,
      epid: xml.findAllElements('EPID').first.innerText
    );
  }
}
@freezed
class WalletInfo with _$WalletInfo {
  factory WalletInfo({
    required String cardName,
    required String cardAccNum,
    required String unit,
    required String walletMoney,
    required String walletName,
    required String isWithdraw,
    required String moneyMax,
    required String monTemp,
    required String monCard,
    required String walletNum,
  }) = _WalletInfo;
}

@freezed
class GetWalletMoneyResponse with _$GetWalletMoneyResponse {
  factory GetWalletMoneyResponse({
    required int code,
    required String msg,
    required List<WalletInfo> wallets,
  }) = _GetWalletMoneyResponse;

  factory GetWalletMoneyResponse.fromXml(String x) {
    final xml = XmlDocument.parse(x);
    final tables = xml.findElements('EasyTong').first.findElements('Table');
    
    return GetWalletMoneyResponse(
      code: int.parse(xml.findElements('EasyTong').first.findElements('Code').first.innerText),
      msg: xml.findElements('EasyTong').first.findElements('Msg').first.innerText,
      wallets: tables.map((table) => WalletInfo(
        cardName: table.findElements('CardName').first.innerText,
        cardAccNum: table.findElements('CardAccNum').first.innerText,
        unit: table.findElements('Unit').first.innerText,
        walletMoney: table.findElements('WalletMoney').first.innerText,
        walletName: table.findElements('WalletName').first.innerText,
        isWithdraw: table.findElements('IsWithdraw').first.innerText,
        moneyMax: table.findElements('MoneyMax').first.innerText,
        monTemp: table.findElements('MonTemp').first.innerText,
        monCard: table.findElements('MonCard').first.innerText,
        walletNum: table.findElements('WalletNum').first.innerText,
      )).toList(),
    );
  }
}
@freezed
class GetH5QRCodeResponse with _$GetH5QRCodeResponse {
  factory GetH5QRCodeResponse({
    required String? authNum,
    required String? cardAccNum,
    required String? qRCode,
    required int code,
    required String msg,
}) = _GetH5QRCodeResponse;

  factory GetH5QRCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$GetH5QRCodeResponseFromJson(json);
}
@freezed
class GetOrderByCodeResponse with _$GetOrderByCodeResponse {
  factory GetOrderByCodeResponse({
    required int code,
    required String msg,
    String? compareType,
    String? dealTime,
    String? discount,
    String? managerFee,
    String? needMoney,
    String? realMoney,
    String? status,
    String? walletMoney,
    String? walletName,
  }) = _GetOrderByCodeResponse;

  factory GetOrderByCodeResponse.fromXml(String x) {
    final xml = XmlDocument.parse(x);
    final root = xml.findElements('EasyTong').first;
    return GetOrderByCodeResponse(
      code: int.parse(root.findElements('Code').first.innerText),
      msg: root.findElements('Msg').first.innerText,
      compareType: root.findElements('CompareType').firstOrNull?.innerText,
      dealTime: root.findElements('DealTime').firstOrNull?.innerText,
      discount: root.findElements('Discount').firstOrNull?.innerText,
      managerFee: root.findElements('ManagerFee').firstOrNull?.innerText,
      needMoney: root.findElements('NeedMoney').firstOrNull?.innerText,
      realMoney: root.findElements('RealMoney').firstOrNull?.innerText,
      status: root.findElements('Status').firstOrNull?.innerText,
      walletMoney: root.findElements('WalletMoney').firstOrNull?.innerText,
      walletName: root.findElements('WalletName').firstOrNull?.innerText,
    );
  }
}