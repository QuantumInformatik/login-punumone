import 'package:first_login_flutter/components/rounded_button.dart';
import 'package:first_login_flutter/constants.dart';
import 'package:first_login_flutter/screens/components/backgound.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Backgound(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "WELCOME TO EDU ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: "Login",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {},
          ),
          RoundedButton(
            text: "Login",
            color: kPrimaryLightColor,
            textColor: Colors.black,
            press: () {},
          )
        ],
      ),
    );
  }
}
