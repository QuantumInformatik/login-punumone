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
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.3,
          ),
          TextFieldContainer(
            childTextField: TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: kPrimaryColor,
                  ),
                  hintText: "Your mail"),
            ),
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

class TextFieldContainer extends StatelessWidget {
  final Widget childTextField;

  const TextFieldContainer({Key key, this.childTextField}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)),
      child: childTextField,
    );
  }
}
