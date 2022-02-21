import 'package:flutter/material.dart';
import 'package:qrcode_scanner/components/custom_text_style/my_text_style_class.dart';
import 'package:qrcode_scanner/utils/colors.dart';
import 'package:qrcode_scanner/utils/strings.dart';

class MyDivider {
  static customDivider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
            child: Container(
          height: 0.5,
          color: MyColors.primaryColor,
        )),
        const SizedBox(width: 10),
        Text(
          Texts.or,
          style: MyTextStyle.mediumStyle(
            fontColor: MyColors.primaryColor,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
            child: Container(
          height: 0.5,
          color: MyColors.primaryColor,
        )),
      ],
    );
  }
}
