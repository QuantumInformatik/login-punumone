import 'package:first_login_flutter/components/have_account.dart';
import 'package:first_login_flutter/components/rounded_button.dart';
import 'package:first_login_flutter/components/rounded_input_field.dart';
import 'package:first_login_flutter/components/rounded_password_field.dart';
import 'package:first_login_flutter/components/text_field_container.dart';
import 'package:first_login_flutter/constants.dart';
import 'package:first_login_flutter/screens/login/components/Background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      childWidget: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _crearInputs(),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.3,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedInputField(
            hintText: "Your email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            color: kPrimaryColor,
            textColor: Colors.white,
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          HaveAnAccount(
            press: () {},
          )
        ],
      ),
    );
  }

  Widget _crearInputs() {
    return Text(
      "LOGIN",
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
