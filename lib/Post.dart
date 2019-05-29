import 'dart:convert';

class Post {
  final String userName;
  final String location;
  final String email;
  final String body;
  final String photo;

  Post({this.userName, this.location, this.email, this.body,this.photo});

  factory Post.fromJson(Map<String, dynamic> jsonData) {
    var fullname = jsonData['name'];
    print(fullname);
    var fullLoc= jsonData['location'];
    var pic= jsonData['picture'];
    print(fullLoc);
    return Post(
      userName: fullname['first'],
      location: fullLoc['street'],
      email: jsonData['email'],
      photo: pic['large'],
    );
  }

}