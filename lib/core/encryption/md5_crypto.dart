import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:fasterlzu/app_config.dart';

class MD5Crypto {
  static String encrypt(String strData) {
    return md5.convert(utf8.encode(strData)).toString();
  }

  static String sign(Map<String, String> data) {
    String signStr = '';
    for (var v in data.values) {
      signStr += '$v|';
    }
    return encrypt(signStr + AppConfig.md5Key);
  }
}