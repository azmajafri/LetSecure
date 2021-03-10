import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Authentication with ChangeNotifier {

  Future<void> signUp(String email, String password) async {
    const url = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyBU_XcF-xZ06WZP7u3QLlQKSuFvsGk43S8';
    try {
      final response = await http.post(url, body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          }
      ));
      final responseData = json.decode(response.body);
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
    } catch (error) {
      throw error;
    }
  }

  Future <void> logIn(String email, String password) async
  {
    const url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBU_XcF-xZ06WZP7u3QLlQKSuFvsGk43S8';

    try {
      final response = await http.post(url, body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          }
      ));
      final responseData = json.decode(response.body);
      if (responseData['error'] != null) {
        throw HttpException(responseData['error']['message']);
      }
      // print(responseData);

    } catch (error) {
      throw error;
    }
  }
}


