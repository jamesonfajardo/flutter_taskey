import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  List<String> myTasks = [
    'Go to sleep',
    'Wake up',
    'Cook Breakfast',
    'Prepare Table',
    'Eat Breakfast',
    'Wash Dishes',
  ];

  void updateTaskey(String newData) {
    myTasks.add(newData);
    notifyListeners();
  }

  void updateData() {
    notifyListeners();
  }
}
