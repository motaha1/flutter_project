import 'dart:convert';

class Doctor {

  String name;
  String city;
  String? email ; 
  

  Doctor({
    required this.name,
    required this.city,
    this.email 
  });


  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'name': name});
    result.addAll({'city': city});
      result.addAll({'email': email});
  
    return result;
  }

  factory Doctor.fromMap(Map<String, dynamic> map) {
    return Doctor(
      name: map['name'] ?? '',
      city: map['city'] ?? '',
          email: map['email'] ?? '',
    );
  }

  factory Doctor.fromMap_2(Map<String, dynamic>? map) {
    return Doctor(
      name: map!['name'] ?? '',
      city: map!['city'] ?? '',
        email: map!['email'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());

  factory Doctor.fromJson(String source) => Doctor.fromMap(json.decode(source));
}
