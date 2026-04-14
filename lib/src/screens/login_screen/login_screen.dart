import 'package:chinna_smart_hub/config/size_config.dart';
import 'package:chinna_smart_hub/src/screens/login_screen/components/body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Body(),
    );
  }
}
