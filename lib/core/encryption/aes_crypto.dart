import 'package:encrypt/encrypt.dart' as e;
import 'package:fasterlzu/app_config.dart';
import 'dart:convert';
import 'dart:typed_data';

import 'package:fasterlzu/core/logger/logger.dart';

class AESCrypto {
  static const String key = AppConfig.aesKey;

  static String? encrypt(String strData) {
    try {
      final iv = e.IV.fromUtf8(key);
      final cipher = e.AES(e.Key.fromUtf8(key), mode: e.AESMode.cbc, padding: null);

      final plaintext = utf8.encode(strData);
      final blockSize = 16;
      final dataLen = plaintext.length;
      final paddedLen = dataLen + (blockSize - (dataLen % blockSize)) % blockSize;
      final padded = Uint8List(paddedLen);
      padded.setRange(0, dataLen, plaintext);

      final encrypted = cipher.encrypt(padded, iv: iv);

      return encrypted.bytes.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join();
    } on FormatException catch (e) {
      log.e("[Crypto] 编码失败: $e");
      return null;
    } catch (e) {
      log.e("[Crypto] 加密失败: $e");
      return null;
    }
  }

  static String? decrypt(String encryptedHex) {
    try {
      final iv = e.IV.fromUtf8(key);
      final cipher = e.AES(e.Key.fromUtf8(key), mode: e.AESMode.cbc, padding: null);

      final encryptedBytes = _hexToBytes(encryptedHex);
      final decrypted = cipher.decrypt(e.Encrypted(encryptedBytes), iv: iv);
      int validLength = decrypted.length;
      for (int i = decrypted.length - 1; i >= 0; i--) {
        if (decrypted[i] != 0) {
          validLength = i + 1;
          break;
        }
      }

      return utf8.decode(decrypted.sublist(0, validLength));
    } on FormatException catch (e) {
      log.e("[Crypto ]解码失败: $e");
      return null;
    } catch (e) {
      log.e("[Crypto] 解密失败: $e");
      return null;
    }
  }

  static Uint8List _hexToBytes(String hex) {
    hex = hex.replaceAll(RegExp(r'[^0-9a-fA-F]'), '');
    if (hex.length % 2 != 0) {
      hex = '0$hex';
    }
    final bytes = Uint8List(hex.length ~/ 2);
    for (int i = 0; i < hex.length; i += 2) {
      final byteStr = hex.substring(i, i + 2);
      bytes[i ~/ 2] = int.parse(byteStr, radix: 16);
    }
    return bytes;
  }
}

