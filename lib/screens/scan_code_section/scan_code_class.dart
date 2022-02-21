import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qrcode_scanner/components/custom_app_bar/custom_app_bar_class.dart';
import 'package:qrcode_scanner/components/custom_divider/custom_divider_class.dart';
import 'package:qrcode_scanner/components/custom_text_style/my_text_style_class.dart';
import 'package:qrcode_scanner/utils/colors.dart';
import 'package:qrcode_scanner/utils/strings.dart';

class ScanCode extends StatefulWidget {
  const ScanCode({Key? key}) : super(key: key);

  @override
  _ScanCodeState createState() => _ScanCodeState();
}

class _ScanCodeState extends State<ScanCode> {
  String result = Texts.flutter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyColors.secondaryColor,
      appBar: const MyAppBar(
        backColor: MyColors.secondaryColor,
        title: Texts.scanCode,
        fontColor: MyColors.primaryColor,
      ),

      body: ListView(
        padding: const EdgeInsets.only(
          top: 100,
          left: 15,
          right: 15,
          bottom: 30,
        ),

        children: [
          Text(Texts.scanResult, textAlign: TextAlign.center,  style: MyTextStyle.regularStyle(fontSize: 15),),
          const SizedBox(height: 30),
          Text(result, textAlign: TextAlign.center,  style: MyTextStyle.mediumStyle(fontSize: 25),),
          const SizedBox(height: 50),

          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.85,
            child: MaterialButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (builder) => const ScanCode(),
                  ),
                );
              },
              color: MyColors.primaryColor,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: Text(
                Texts.scanCode,
                style: MyTextStyle.regularStyle(
                    fontColor: MyColors.secondaryColor),
              ),
            ),
          ),

          const SizedBox(height: 15),
          MyDivider.customDivider(),
          const SizedBox(height: 15),
          InkWell(
              onTap: () {},
              child: Text(
                Texts.createCode,
                textAlign: TextAlign.center,
                style: MyTextStyle.mediumStyle(
                  fontColor: MyColors.primaryColor,
                  fontSize: 14,
                ),
              )),


        ],
      ),
    );
  }
}
