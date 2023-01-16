import 'dart:convert';

class Chat {
  
  String sender;
  String receiver;
  String text;
  String time;

  Chat({
    required this.sender,
    required this.receiver,
    required this.text,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'sender': sender});
    result.addAll({'receiver': receiver});
    result.addAll({'text': text});
    result.addAll({'time': time});
  
    return result;
  }

  factory Chat.fromMap(Map<String, dynamic> map) {
    return Chat(
      sender: map['sender'] ?? '',
      receiver: map['receiver'] ?? '',
      text: map['text'] ?? '',
      time: map['time'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Chat.fromJson(String source) => Chat.fromMap(json.decode(source));
} 
