import 'dart:convert';

class Appoiment {
  String doctor;
  String patiant;
  String date;
  String start; 
  String end ; 
  Appoiment({
    required this.doctor,
    required this.patiant,
    required this.date,
    required this.start,
    required this.end,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'doctor': doctor});
    result.addAll({'patiant': patiant});
    result.addAll({'date': date});
    result.addAll({'start': start});
    result.addAll({'end': end});
  
    return result;
  }

  factory Appoiment.fromMap(Map<String, dynamic> map) {
    return Appoiment(
      doctor: map['doctor'] ?? '',
      patiant: map['patiant'] ?? '',
      date: map['date'] ?? '',
      start: map['start'] ?? '',
      end: map['end'] ?? '')
    ;
  }

  String toJson() => json.encode(toMap());

  factory Appoiment.fromJson(String source) => Appoiment.fromMap(json.decode(source));
}
