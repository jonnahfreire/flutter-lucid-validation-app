import 'package:flutter/material.dart';

class CredentialModel extends ChangeNotifier {
  String email;
  String password;

  CredentialModel({this.email = '', this.password = ''});

  setEmail(String email) {
    this.email = email;
    notifyListeners();
  }

  setPassword(String password) {
    this.password = password;
    notifyListeners();
  }

  @override
  String toString() {
    return 'CredentialModel({$email, $password})';
  }
}
