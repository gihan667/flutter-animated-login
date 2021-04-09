import 'package:flutter/material.dart';
import 'package:flutter_login/components/rounded_button.dart';
import 'package:flutter_login/components/rounded_input.dart';
import 'package:flutter_login/components/rounded_password_input.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    Key key,
    @required this.isLogin,
    @required this.animationDuration,
    @required this.size,
    @required this.defaultLoginSize,
  }) : super(key: key);

  final bool isLogin;
  final Duration animationDuration;
  final Size size;
  final double defaultLoginSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isLogin ? 0.0 : 1.0,
      duration: animationDuration * 5,
      child: Visibility(
        visible: !isLogin,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: size.width,
            height: defaultLoginSize,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(height: 10),

                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24
                    ),
                  ),

                  SizedBox(height: 40),

                  SvgPicture.asset('assets/images/register.svg'),

                  SizedBox(height: 40),

                  RoundedInput(icon: Icons.mail, hint: 'Username'),

                  RoundedInput(icon: Icons.face_rounded, hint: 'Name'),

                  RoundedPasswordInput(hint: 'Password'),

                  SizedBox(height: 10),

                  RoundedButton(title: 'SIGN UP'),

                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}