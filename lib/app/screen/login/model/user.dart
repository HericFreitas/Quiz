import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class UserModel {

  String email;
  String password;
  String name;
  int points;
  String uid;

  UserModel({@required this.email,@required this.name,@required this.points,@required this.uid});

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
      'points' : points,
    };
  }
}