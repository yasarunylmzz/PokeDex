import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._(); // artık bundan kimse nesne üretemez çünkü kurucu metodunu gizli yaptık.

  static const String title = 'Pokedex';
  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(48),
    );
  }

  static TextStyle getPokemonNameTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(22),
    );
  }

  static TextStyle getTypeChipTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.5).sp;
    }
  }

  static getPokeInfoLabelStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(20),
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }

  static getPokeInfoTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(16),
      color: Colors.black,
    );
  }
}
