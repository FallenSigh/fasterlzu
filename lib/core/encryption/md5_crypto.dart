import 'dart:convert';
import 'package:crypto/crypto.dart';

class MD5Crypto {
  static String encrypt(String strData) {
    return md5.convert(utf8.encode(strData)).toString();
  }

  /// 校园卡接口签名（服务器新规则: MD5(参数值1|参数值2|...|etToken)）
  /// [data] 按字母序排列的请求参数（不含 ContentType）
  /// [etToken] ET 令牌（JWT），作为签名密钥
  static String sign(Map<String, String> data, String etToken) {
    String signStr = '';
    for (var v in data.values) {
      signStr += '$v|';
    }
    return encrypt(signStr + etToken);
  }
}