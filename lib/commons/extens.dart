import 'package:flutter/material.dart';

extension BuildContextExt on BuildContext {
  void go(String pathname, {Object? arguments}) => Navigator.pushNamed(this, pathname, arguments: arguments);
}
