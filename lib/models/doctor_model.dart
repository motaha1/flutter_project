import 'dart:convert';

class Doctor {
  String name;
  String city; 
  Doctor({
    required this.name,
    required this.city,
  });


  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'city': city});
  
    return result;
  }

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      name: map['name'] ?? '',
      city: map['city'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Doctor.fromJson(String source) => Doctor.fromMap(json.decode(source));
}
