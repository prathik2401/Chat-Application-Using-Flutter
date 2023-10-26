class UserModel {
  final String name;
  final String uid;
  final String profilepic;
  final bool isOnline;
  final String phoneNumber;
  final List<String> groupId;
  UserModel({
    required this.name,
    required this.uid,
    required this.profilepic,
    required this.isOnline,
    required this.phoneNumber,
    required this.groupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'uid': uid,
      'profilepic': profilepic,
      'isOnline': isOnline,
      'phoneNumber': phoneNumber,
      'groupId': groupId,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
        name: map['name'] as String,
        uid: map['uid'] as String,
        profilepic: map['profilepic'] as String,
        isOnline: map['isOnline'] as bool,
        phoneNumber: map['phoneNumber'] as String,
        groupId: List<String>.from(
          (map['groupId'] as List<String>),
        ));
  }
}
