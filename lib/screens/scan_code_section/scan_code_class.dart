import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qrcode_scanner/components/custom_app_bar/custom_app_bar_class.dart';
import 'package:qrcode_scanner/components/custom_divider/custom_divider_class.dart';
import 'package:qrcode_scanner/components/custom_text_style/my_text_style_class.dart';
import 'package:qrcode_scanner/screens/create_code_section/create_code.dart';
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
          // title text
          Text(
            Texts.scanResult,
            textAlign: TextAlign.center,
            style: MyTextStyle.regularStyle(fontSize: 15),
          ),
          const SizedBox(height: 30),

          // result will appear here
          Text(
            result,
            textAlign: TextAlign.center,
            style: MyTextStyle.mediumStyle(fontSize: 25),
          ),
          const SizedBox(height: 50),

          // scan code button
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.85,
            child: MaterialButton(
              onPressed: () {
                qrCodeResultMethod();
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

          // custom divider
          const SizedBox(height: 15),
          MyDivider.customDivider(),
          const SizedBox(height: 15),

          // go to create code page
          InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (builder) => const CreateCode()));
              },
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

  // function for scan code
  Future<void> qrCodeResultMethod() async {
    try {
      final qrCode = await FlutterBarcodeScanner.scanBarcode(
        "#ff6666",
        Texts.exit,
        true,
        ScanMode.QR,
      );

      if (!mounted) return;

      setState(() {
        result = qrCode;
      });
    } on PlatformException {
      result = "Sorry";
    }
  }
}
