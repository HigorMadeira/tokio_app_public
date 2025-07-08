import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'i_encrypt.dart';

class Encrypt implements IEncrypt {
  @override
  String encryptSHA256(String value) {
    final bytes = utf8.encode(value);
    final digest = sha256.convert(bytes);

    return digest.toString();
  }

  @override
  String customDecrypt(String ciphertext, int key) {
    List<int> ciphertextCodes = ciphertext.codeUnits;
    List<int> plaintextCodes =
        ciphertextCodes.map((code) => code - key).toList();
    return String.fromCharCodes(plaintextCodes);
  }

  @override
  String customEncrypt(String plaintext, int key) {
    List<int> plaintextCodes = plaintext.codeUnits;
    List<int> ciphertextCodes =
        plaintextCodes.map((code) => code + key).toList();
    return String.fromCharCodes(ciphertextCodes);
  }

  @override
  String decryptBase64(String value) {
    List<int> decodedBytes = base64Decode(value);

    String output = utf8.decode(decodedBytes);

    return output;
  }

  @override
  String encryptBase64(String value) {
    List<int> inputBytes = utf8.encode(value);

    String base64String = base64Encode(inputBytes);

    return base64String;
  }
}
