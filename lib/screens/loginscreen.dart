import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/screens/registerscreen.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/utils/sharedpref.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MyConfig _myconfig = MyConfig();

  TextEditingController cellphoneControler = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              Image.asset("assets/images/signinbg.png"),
              SizedBox(
                height: _myconfig.myHeight * 6,
              ),
              MyInputField(
                keyboardtype: TextInputType.number,
                myicon: Icon(
                  Icons.phone_in_talk_outlined,
                  color: _myconfig.myButtonbackgroundColor,
                  size: _myconfig.myIconSize,
                ),
                hinttext: "Cell Phone",
                hidedata: false,
                mycontroller: cellphoneControler,
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              SizedBox(
                height: _myconfig.myHeight / 3,
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              MyButton(
                btnwidth:
                    MediaQuery.of(context).size.width - _myconfig.myMargin * 4,
                bgcolor: _myconfig.myButtonbackgroundColor,
                btntextsize: _myconfig.myExtraLargeFontSize,
                buttontext: "SEND OTP",
                textcolor: _myconfig.myButtonTextColor,
                onTap: () async {
                  _submit();
                },
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              TermCondition(),
              SizedBox(
                height: _myconfig.myHeight,
              ),
              Container(
                margin: EdgeInsets.only(right: _myconfig.myMargin * 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: _myconfig.myLargeFontSize),
                    ),
                    SizedBox(
                      width: _myconfig.myWidth,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => RegisterScreen())));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _myconfig.myButtonTextColor,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade100,
                              blurRadius: 10,
                              offset: Offset(0, 2), // Shadow position
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: Icon(
                            Icons.arrow_forward,
                            size: _myconfig.myIconSize,
                            color: Colors.black,
                          ),
                          // child: Image.asset(
                          //   "assets/images/forwordicon.png",
                          //   width: 20,
                          // ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  void _submit() async {
    if (cellphoneControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter Cell Phone");
      return;
    }

    SharedPrefs().setLoginFlag(true);

    
    Navigator.push(context,
        MaterialPageRoute(builder: ((context) => BottomNavbarScreen())));
  }
}
