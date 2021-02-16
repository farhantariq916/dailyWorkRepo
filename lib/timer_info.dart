import 'package:flutter/material.dart';

class TimerInfo extends ChangeNotifier {
  int _remainingTime=60;
  int getRemainingTime()=>_remainingTime;
  void updateRemainingTime() {
    _remainingTime--;
    notifyListeners();

  }
}