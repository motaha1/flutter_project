class Userapi {

int? id;
  String? avatar;
  String? lastLogin;
  bool? isSuperuser;
  String? email;
  String? username;
  String? gender;
  String? mobile;
  String? city;
  String? birthdate;
  bool? isStaff;
  bool? isActive;
  bool? isPatient;
  bool? isSpecialist;
  String? fcmToken;

  Userapi(
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
      this.isSpecialist,
      this.fcmToken});

  Userapi.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    avatar = json['avatar1'];
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
    fcmToken = json['fcm_token'];
  }





}