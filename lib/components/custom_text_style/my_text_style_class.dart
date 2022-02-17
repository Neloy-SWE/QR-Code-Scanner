import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qrcode_scanner/utils/colors.dart';
import 'package:qrcode_scanner/utils/strings.dart';

class MyTextStyle {
  static regularStyle(
      {double fontSize = 14, Color fontColor = MyColors.primaryColor}) {
    return TextStyle(
      fontFamily: Texts.regularText,
      fontSize: fontSize,
      color: fontColor,
    );
  }

  static mediumStyle(
      {double fontSize = 17, Color fontColor = MyColors.primaryColor}) {
    return TextStyle(
      fontFamily: Texts.mediumText,
      fontSize: fontSize,
      color: fontColor,
    );
  }
}
