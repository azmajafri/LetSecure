
class User{
  String uid;
  String name;
  String email;
  String displayName;

  User(this.displayName);

  // User({
  //   this.uid,
  //   this.name,
  //   this.email,
  //   this.displayName,
  // });

  Map<String, dynamic> toJson() => {
    'name': displayName,
    'email': email,
  };

  // factory User.fromDocument(DocumentSnapshot doc) {
  //   return User(
  //     uid: doc['id'],
  //     name: doc['name'],
  //     email: doc['email'],
  //     displayName: doc['displayName'],
  //   );
  // }
}

