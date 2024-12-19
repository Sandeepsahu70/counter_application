// import 'package:flutter/material.dart';
//
// class ColorProvider with ChangeNotifier {
//   String _label = 'This is blue Color';
//   Color _colorContainer = Colors.blue;
//
//   String get label => _label;
//   Color get colorContainer => _colorContainer;
//
//   void changeColor(Color color, String newLabel) {
//     _colorContainer = color;
//     _label = newLabel;
//     notifyListeners();  // Notify listeners about the state change
//   }
// }
import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  String _label = 'This is blue Color';
  Color _colorContainer = Colors.blue;

  String get label => _label;
  Color get colorContainer => _colorContainer;

  void changeColor(Color color, String newLabel) {
    _colorContainer = color;
    _label = newLabel;
    notifyListeners();  // Notify listeners about the state change
  }
}
