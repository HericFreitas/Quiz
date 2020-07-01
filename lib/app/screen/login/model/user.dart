import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class UserModel {
  String name;
  String cpf;
  String cnpj;
  String date;
  String telefone;
  String email;
  String password;

  int points;
  String uid;

  UserModel(
      {@required this.email,
      @required this.name,
      @required this.points,
      @required this.uid,
      this.cnpj,
      this.cpf,
      this.password,
      this.date,
      this.telefone});

  UserModel.fromDocuments(DocumentSnapshot doc) {
    uid = doc.documentID;
    name = doc['name'] as String;
    cpf = doc['cpf'] as String;
    cnpj = doc['cnpj'] as String;
    date = doc['date'] as String;
    telefone = doc['telefone'] as String;
    email = doc['email'] as String;
    points = doc['points'] as int;
  }

  static UserModel fromMap(Map<String, dynamic> doc) {
    if (doc == null) return null;

    return UserModel(
      uid: doc['uid'] as String,
      name: doc['name'] as String,
      cpf: doc['cpf'] as String,
      cnpj: doc['cnpj'] as String,
      date: doc['date'] as String,
      telefone: doc['telefone'] as String,
      email: doc['email'] as String,
      points: doc['points'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'cpf': cpf,
      'cnpj': cnpj,
      'date': date,
      'telefone': telefone,
      'email': email,
      'points': points,
    };
  }
}
