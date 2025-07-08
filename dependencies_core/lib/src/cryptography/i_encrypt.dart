abstract class IEncrypt {
  String encryptSHA256(String value);
  String customEncrypt(String plaintext, int key);
  String customDecrypt(String plaintext, int key);
  String encryptBase64(String value);
  String decryptBase64(String value);
}
