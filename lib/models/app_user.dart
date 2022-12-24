import 'dart:convert';

class AppUser {
  String email;
  String? id;
  String? imageUrl;
  String name;
  String phoneNumber;
  String? type ; 

  AppUser(
      {required this.email,
      required this.name,
      required this.phoneNumber,
      this.id,
      this.imageUrl , 
      this.type , 
     });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber,
      'imageUrl': imageUrl , 
      
    };
  }

  factory AppUser.fromMap(Map<String, dynamic> map) {
    return AppUser(
      email: map['email'] ?? '',
      name: map['userName'] ?? '',
      phoneNumber: map['phoneNumber'] ?? '',
      imageUrl: map['imageUrl'],
     
    );
  }

  String toJson() => json.encode(toMap());

  factory AppUser.fromJson(String source) =>
      AppUser.fromMap(json.decode(source));
}
