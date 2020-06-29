import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {

  String email;
  String password;
  String name;
  int points;
  String uid;

  UserModel({this.email, this.name, this.points, this.password, this.uid});

  UserModel.fromDocuments(DocumentSnapshot doc ){
    uid = doc.documentID;
    email = doc['email'] as String;
    name = doc['name'] as String;
    points = doc['points'] as int;
  }

  Map<String, dynamic> toMap(){
    return {
      'name' : name,
      'email' : email,
      'points' : points
    };
  }
}