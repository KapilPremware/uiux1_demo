import 'package:flutter/material.dart';

class AppProvider with ChangeNotifier{
  bool isLoading = true;
  String message;
  bool darkTheme = false;
  bool isInit = false;
  String fcmToken = "";

  void updateFcmToken(String token) {
    fcmToken = token;
    notifyListeners();
  }

  Future<String> getFcmToken() async {
    return fcmToken;
  }
}