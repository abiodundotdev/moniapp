import 'package:flutter/material.dart';

class LineBreak {
  LineBreak._();
  //TODO : perform some line break base on the screen size
  ///Create a break point along the vertical axis with a given size
  static Widget vertical(double size) {
    return SizedBox(height: size);
  }

  ///Create a break point along the horizontal axis with a given size
  static Widget horizontal(double size) {
    return SizedBox(height: size);
  }
}
