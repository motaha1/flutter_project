import 'dart:convert';

class PatientProfile {
  String email;
  String username;
  String? gender;
  String? mobile;
  String city;
  String birthday;
  String? avatar;

  String? blood_type;
  List? chronic_illness;
  bool? have_allergies = false;

  PatientProfile({
    required this.email,
    required this.username,
    this.gender,
    this.mobile,
    required this.city,
    required this.birthday,
    this.avatar,
    this.blood_type,
    this.chronic_illness,
    this.have_allergies,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'email': email});
    result.addAll({'username': username});
    if (gender != null) {
      result.addAll({'gender': gender});
    }
    if (mobile != null) {
      result.addAll({'mobile': mobile});
    }
    result.addAll({'city': city});
    result.addAll({'birthday': birthday});
    if (avatar != null) {
      result.addAll({'avatar': avatar});
    }
    if (blood_type != null) {
      result.addAll({'blood_type': blood_type});
    }
    if (chronic_illness != null) {
      result.addAll({'chronic_illness': chronic_illness});
    }
    result.addAll({'have_allergies': have_allergies});

    return result;
  }

  factory PatientProfile.fromMap(Map<String, dynamic> map) {
    return PatientProfile(
      email: map['email'] ?? '',
      username: map['username'] ?? '',
      gender: map['gender'],
      mobile: map['mobile'],
      city: map['city'] ?? '',
      birthday: map['birthday'] ?? '',
      avatar: map['avatar'],
      blood_type: map['blood_type'],
      chronic_illness: map['chronic_illness'],
      have_allergies: map['have_allergies'],
    );
  }

  String toJson() => json.encode(toMap());

  factory PatientProfile.fromJson(String source) =>
      PatientProfile.fromMap(json.decode(source));
}
