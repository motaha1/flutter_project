class Specialists {
  num? id;
  User? user;
  String? createdAt;
  String? updatedAt;
  String? type;
  num? hourCost;
  String? dailyOpenFrom;
  String? dailyOpenTo;
  String? topDegree;
  num? examinationAvgPeriod;
  String? jobTitle;

  Specialists(
      {this.id,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.type,
      this.hourCost,
      this.dailyOpenFrom,
      this.dailyOpenTo,
      this.topDegree,
      this.examinationAvgPeriod,
      this.jobTitle});

  Specialists.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    type = json['type'];
    hourCost = json['hour_cost'];
    dailyOpenFrom = json['daily_open_from'];
    dailyOpenTo = json['daily_open_to'];
    topDegree = json['top_degree'];
    examinationAvgPeriod = json['examination_avg_period'];
    jobTitle = json['job_title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['type'] = this.type;
    data['hour_cost'] = this.hourCost;
    data['daily_open_from'] = this.dailyOpenFrom;
    data['daily_open_to'] = this.dailyOpenTo;
    data['top_degree'] = this.topDegree;
    data['examination_avg_period'] = this.examinationAvgPeriod;
    data['job_title'] = this.jobTitle;
    return data;
  }
}

class User {
  num? id;
  String? avatar;
  String? lastLogin;
  bool? isSuperuser;
  String? email;
  String? username;
  String? gender;
  String ? mobile;
  String? city;
  String? birthdate;
  bool? isStaff;
  bool? isActive;
  bool? isPatient;
  bool? isSpecialist;

  User(
      {this.id,
      this.avatar,
      this.lastLogin,
      this.isSuperuser,
      this.email,
      this.username,
      this.gender,
      this.mobile,
      this.city,
      this.birthdate,
      this.isStaff,
      this.isActive,
      this.isPatient,
      this.isSpecialist});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar'];
    lastLogin = json['last_login'];
    isSuperuser = json['is_superuser'];
    email = json['email'];
    username = json['username'];
    gender = json['gender'];
    mobile = json['mobile'];
    city = json['city'];
    birthdate = json['birthdate'];
    isStaff = json['is_staff'];
    isActive = json['is_active'];
    isPatient = json['is_patient'];
    isSpecialist = json['is_specialist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['avatar'] = this.avatar;
    data['last_login'] = this.lastLogin;
    data['is_superuser'] = this.isSuperuser;
    data['email'] = this.email;
    data['username'] = this.username;
    data['gender'] = this.gender;
    data['mobile'] = this.mobile;
    data['city'] = this.city;
    data['birthdate'] = this.birthdate;
    data['is_staff'] = this.isStaff;
    data['is_active'] = this.isActive;
    data['is_patient'] = this.isPatient;
    data['is_specialist'] = this.isSpecialist;
    return data;
  }
}