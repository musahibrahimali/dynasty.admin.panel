class Admin {
  final String? firstName;
  final String? lastName;
  final String? displayName;
  final String? email;
  final bool? isAdmin;
  final List<dynamic>? roles;
  final String? avatar;
  final String? uid;

  Admin({
    this.firstName,
    this.lastName,
    this.displayName,
    this.email,
    this.avatar,
    this.uid,
    this.isAdmin,
    this.roles,
  });

  // factory from json
  factory Admin.fromJson(Map<String, dynamic> json) {
    return Admin(
      firstName: json['lastName'],
      lastName: json['firstName'],
      displayName: json['displayName'],
      email: json['email'],
      avatar: json['avatar'],
      uid: json['_id'],
      isAdmin: json['isAdmin'],
      roles: json['roles'],
    );
  }

  // to json
  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'displayName': displayName,
      'email': email,
      'avatar': avatar,
      'uid': uid,
      'isAdmin': isAdmin,
      'roles': roles,
    };
  }
}
