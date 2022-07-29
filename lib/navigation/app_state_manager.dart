import 'package:flutter/material.dart';
import 'dart:async';

class AppStateManager extends ChangeNotifier {
  bool _splashPage = false;
  bool _homePage = false;

  bool get isSplashPage => _splashPage;
  bool get isHomePage => _homePage;

  void initializeApp() {
  Timer(const Duration(milliseconds: 4000), () {
    _splashPage = true;

    notifyListeners();
  });
}

 void homePage() {
    _homePage = true;
    notifyListeners();
  }
}
