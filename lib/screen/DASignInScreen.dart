import 'package:dating_app/screen/DAChatScreen.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../utils/DAColors.dart';
import '../utils/DAWidgets.dart';

class DASignInScreen extends StatefulWidget {
  const DASignInScreen({super.key});

  @override
  DASignInScreenState createState() => DASignInScreenState();
}

class DASignInScreenState extends State<DASignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  FocusNode emailFocus = FocusNode();
  FocusNode passWordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    //
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: appBarWidget('apes', titleTextStyle: boldTextStyle(size: 25)),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.height,
              Text('Welcome \nback!', style: boldTextStyle(size: 30)),
              16.height,
              Text('Glad to see you again!', style: primaryTextStyle()),
              16.height,
              AppTextField(
                controller: emailController,
                textStyle: primaryTextStyle(color: black),
                focus: emailFocus,
                nextFocus: passWordFocus,
                textFieldType: TextFieldType.EMAIL,
                cursorColor: white,
                decoration: buildInputDecoration('Email',
                    prefixIcon:
                        const Icon(Icons.email_outlined, color: primaryColor)),
              ),
              16.height,
              AppTextField(
                focus: passWordFocus,
                controller: passController,
                textStyle: primaryTextStyle(color: black),
                textFieldType: TextFieldType.PASSWORD,
                cursorColor: white,
                decoration: buildInputDecoration('Password',
                    prefixIcon: const Icon(Icons.lock_open, color: primaryColor)),
              ),
              16.height,
              AppButton(
                elevation: 0,
                shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                width: context.width(),
                color: Colors.black,
                onTap: () {
                  finish(context);
                  const DADashboardScreen().launch(context);
                },
                text: 'Sign In',
                textStyle: boldTextStyle(color: white),
              ),
            ],
          ).paddingOnly(left: 16, right: 16),
        ),
      ),
    );
  }
}
