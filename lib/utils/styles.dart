
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

double height = 0.0;
double width = 0.0;

extension SizeUtils on int {
  double get h => (this / 812) * height;

  double get w => (this / 375) * width;

  SizedBox getH() {
    return SizedBox(
      height: (this / 812) * height,
    );
  }

  SizedBox getW() {
    return SizedBox(
      width: (this / 375) * width,
    );
  }
}







//////////////////////////////////////////////////////////////////
extension IntExtensions on int {
  Widget height() {
    return SizedBox(
      height: toDouble(),
    );
  }
///////////////////////////////////////////////////////////
  Widget width() {
    return SizedBox(
      width: toDouble(),
    );
  }
}
////////////////////////////////////////////////////////////////
extension ContextExtesions on BuildContext {
  double width() {
    return MediaQuery.sizeOf(this).width;
  }
}

///\/\/\/\/\/\/\/\/\/\/\/\/\//\//\/\/\/\/\/\/\/\/\/\
class AppTextStyles {
  static const HeadLineblack = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w900,
    fontFamily: "Bold",
    color: Colors.black,
  );
  ///////////////////////////////////////////////////////
  static const HeadLinebWhite = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.w900,
    color: Colors.white,
    fontFamily: "Bold",
  );
  ////////////////////////////////////////////

  static const ParagraphbWhite = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: "Bold",
  );
  ///////////////////////////////////////////
  static const Paragraphblack = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color:Colors.black,
    fontFamily: "Bold",
  );
}
/////////////////////////////////////////////////////////////////////
abstract class AppDecorationsContainer {
  static const decorContainer = BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(20),

      ),
      boxShadow: [
        BoxShadow(
          blurRadius: 1,
        ),
      ],
      color: Colors.white);


  ////////////////////////////////////////////////////////////////
  static const ContainerDecorshadow = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),
    color: Colors.white,
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10,
        spreadRadius: 5,
      ),
    ],
  );
}
