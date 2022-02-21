import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrcode_scanner/components/custom_app_bar/custom_app_bar_class.dart';
import 'package:qrcode_scanner/utils/colors.dart';

import '../../utils/strings.dart';

class CreateCode extends StatefulWidget {
  const CreateCode({Key? key}) : super(key: key);

  @override
  _CreateCodeState createState() => _CreateCodeState();
}

class _CreateCodeState extends State<CreateCode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        backColor: MyColors.secondaryColor,
        title: Texts.welcome,
        fontColor: MyColors.primaryColor,
      ),
    );
  }
}
