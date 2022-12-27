import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/screens/registerscreen.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

final countrycode = "+91";

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MyConfig _myconfig = MyConfig();

  TextEditingController cellphoneControler = TextEditingController();

  String devicetokenid = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MyInputField(
            keyboardtype: TextInputType.number,
            myicon: Icon(Icons.phone),
            mycontroller: cellphoneControler,
            hidedata: false,
            hinttext: "Enter phone"));
  }
}
