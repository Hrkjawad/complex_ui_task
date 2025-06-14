import 'package:flutter/material.dart';

import '../../utilities/responsive.dart';

class AuthStructure extends StatelessWidget {
  const AuthStructure({super.key, required this.firstText, required this.secondText, required this.widget});
final String firstText, secondText;
final Widget widget;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(top: Responsive.sizeH(40)),
          child: Column(
            spacing: Responsive.sizeH(10),
            children: [
              Text(
                firstText,
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4E5D78),
                ),
              ),
              SizedBox(
                width: Responsive.sizeW(281),
                child: Text(
                  secondText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 14,
                    color: Color(0xff4E5D78),
                  ),
                ),
              ),
              SizedBox(
                height: Responsive.sizeH(20),
              ),
              widget,
            ],
          ),
        ),
      ),
    );
  }
}
