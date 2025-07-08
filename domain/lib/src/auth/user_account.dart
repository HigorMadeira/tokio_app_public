import 'dart:convert';
import 'package:domain/domain.dart';
import 'package:flutter/foundation.dart';

class UserAccount {
  int? id;
  String name;
  String? cpf;
  String? password;
  List<Insurance>? insurances;
  UserAccount({
    required this.id,
    required this.name,
    this.cpf,
    this.password,
    this.insurances,
  });

  UserAccount copyWith({
    int? id,
    String? name,
    String? cpf,
    String? password,
    List<Insurance>? insurances,
  }) {
    return UserAccount(
      id: id ?? this.id,
      name: name ?? this.name,
      cpf: cpf ?? this.cpf,
      password: password ?? this.password,
      insurances: insurances ?? this.insurances,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'cpf': cpf,
      'password': password,
      'insurances': insurances?.map((x) => x.toMap()).toList(),
    };
  }

  factory UserAccount.fromMap(Map<String, dynamic> map) {
    return UserAccount(
      id: map['id'] as int,
      name: map['name'] as String,
      cpf: map['cpf'] != null ? map['cpf'] as String : null,
      password: map['password'] != null ? map['password'] as String : null,
      insurances: map['insurances'] != null
          ? List<Insurance>.from(
              (map['insurances'] as List<dynamic>).map<Insurance>(
                (x) => Insurance.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserAccount.fromJson(String source) =>
      UserAccount.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserAccount(id: $id, name: $name, cpf: $cpf, password: $password, insurances: $insurances)';
  }

  @override
  bool operator ==(covariant UserAccount other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.cpf == cpf &&
        other.password == password &&
        listEquals(other.insurances, insurances);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        cpf.hashCode ^
        password.hashCode ^
        insurances.hashCode;
  }
}
