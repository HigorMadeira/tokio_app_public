import 'dart:convert';

import 'package:flutter/foundation.dart';

class Insurance {
  final Map<String, dynamic> data;

  Insurance({
    required this.data,
  });

  Insurance copyWith({
    Map<String, dynamic>? data,
  }) {
    return Insurance(
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
    };
  }

  factory Insurance.fromMap(Map<String, dynamic> map) {
    return Insurance(
        data: Map<String, dynamic>.from(
      (map['data'] as Map<String, dynamic>),
    ));
  }

  String toJson() => json.encode(toMap());

  factory Insurance.fromJson(String source) =>
      Insurance.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Insurance(data: $data)';

  @override
  bool operator ==(covariant Insurance other) {
    if (identical(this, other)) return true;

    return mapEquals(other.data, data);
  }

  @override
  int get hashCode => data.hashCode;
}
