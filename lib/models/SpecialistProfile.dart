import 'dart:convert';

class SpecialistProfile {
  String email;
  String username;
  String? gender;
  String? mobile;
  String city;
  String birthday;
  String? avatar;
  String type;
  int? hour_cost;
  String? daily_open_from;

  String? daily_open_to;

  String? top_degree;
  int? examination_avg_period = 15;
  String? job_title;
  SpecialistProfile({
    required this.email,
    required this.username,
    this.gender,
    this.mobile,
    required this.city,
    required this.birthday,
    this.avatar,
    required this.type,
    this.hour_cost,
    this.daily_open_from,
    this.daily_open_to,
    this.top_degree,
    this.examination_avg_period,
    this.job_title,
  });


  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'email': email});
    result.addAll({'username': username});
    if(gender != null){
      result.addAll({'gender': gender});
    }
    if(mobile != null){
      result.addAll({'mobile': mobile});
    }
    result.addAll({'city': city});
    result.addAll({'birthday': birthday});
    if(avatar != null){
      result.addAll({'avatar': avatar});
    }
    result.addAll({'type': type});
    if(hour_cost != null){
      result.addAll({'hour_cost': hour_cost});
    }
    if(daily_open_from != null){
      result.addAll({'daily_open_from': daily_open_from});
    }
    if(daily_open_to != null){
      result.addAll({'daily_open_to': daily_open_to});
    }
    if(top_degree != null){
      result.addAll({'top_degree': top_degree});
    }
    if(examination_avg_period != null){
      result.addAll({'examination_avg_period': examination_avg_period});
    }
    if(job_title != null){
      result.addAll({'job_title': job_title});
    }
  
    return result;
  }

  factory SpecialistProfile.fromMap(Map<String, dynamic> map) {
    return SpecialistProfile(
      email: map['email'] ?? '',
      username: map['username'] ?? '',
      gender: map['gender'],
      mobile: map['mobile'],
      city: map['city'] ?? '',
      birthday: map['birthday'] ?? '',
      avatar: map['avatar'],
      type: map['type'] ?? '',
      hour_cost: map['hour_cost']?.toInt(),
      daily_open_from: map['daily_open_from'],
      daily_open_to: map['daily_open_to'],
      top_degree: map['top_degree'],
      examination_avg_period: map['examination_avg_period']?.toInt(),
      job_title: map['job_title'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SpecialistProfile.fromJson(String source) => SpecialistProfile.fromMap(json.decode(source));
}
