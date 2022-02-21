import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:qrcode_scanner/components/custom_app_bar/custom_app_bar_class.dart';
import 'package:qrcode_scanner/components/custom_divider/custom_divider_class.dart';
import 'package:qrcode_scanner/components/custom_text_style/my_text_style_class.dart';
import 'package:qrcode_scanner/utils/colors.dart';

import '../../utils/strings.dart';

class CreateCode extends StatefulWidget {
  const CreateCode({Key? key}) : super(key: key);

  @override
  _CreateCodeState createState() => _CreateCodeState();
}

class _CreateCodeState extends State<CreateCode> {
  String normalText = Texts.flutter;

  TextEditingController createCodeController = TextEditingController();

  @override
  void dispose() {
    createCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyColors.secondaryColor,
      appBar: const MyAppBar(
        backColor: MyColors.secondaryColor,
        title: Texts.createCode,
        fontColor: MyColors.primaryColor,
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15,
          bottom: 30,
        ),
        children: [
          normalText == Texts.flutter
              ? const Icon(
                  FontAwesomeIcons.qrcode,
                  size: 170,
                  color: MyColors.codeColor,
                )
              : BarcodeWidget(
                  barcode: Barcode.qrCode(),
                  data: normalText,
                  color: MyColors.primaryColor,
                ),
          const SizedBox(height: 50),
          TextField(
            style: MyTextStyle.mediumStyle(fontSize: 15),
            controller: createCodeController,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: Texts.writeSomething,
              hintStyle: MyTextStyle.regularStyle(
                fontSize: 13,
                fontColor: MyColors.hintTextColor,
              ),
              labelText: Texts.letsTry,
              labelStyle: MyTextStyle.mediumStyle(
                fontSize: 10,
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                borderSide: BorderSide(
                  color: MyColors.borderColor,
                  width: 0.5,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                borderSide: BorderSide(
                  color: MyColors.primaryColor,
                  width: 1.5,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.85,
            child: MaterialButton(
              onPressed: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
                setState(() {
                  normalText = createCodeController.text.trim();
                });
              },
              color: MyColors.primaryColor,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: Text(
                Texts.create,
                style: MyTextStyle.regularStyle(
                    fontColor: MyColors.secondaryColor),
              ),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.85,
            child: MaterialButton(
              onPressed: () {
                FocusScopeNode currentFocus = FocusScope.of(context);
                if (!currentFocus.hasPrimaryFocus) {
                  currentFocus.unfocus();
                }
                setState(() {
                  createCodeController.clear();
                  normalText = Texts.flutter;
                });
              },
              color: MyColors.secondaryColor,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(7),
                ),
                side: BorderSide(width: 1, color: MyColors.primaryColor),
              ),
              child: Text(
                Texts.clear,
                style:
                    MyTextStyle.regularStyle(fontColor: MyColors.primaryColor),
              ),
            ),
          ),
          const SizedBox(height: 15),
          MyDivider.customDivider(),
          const SizedBox(height: 15),
          InkWell(
              onTap: () {},
              child: Text(
                Texts.scanCode,
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
