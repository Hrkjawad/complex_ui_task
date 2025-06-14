import 'package:flutter/material.dart';

import '../../utilities/app_main_color.dart';

class UiLastTextButtonWidget extends StatelessWidget {
  const UiLastTextButtonWidget({super.key, required this.text1, required this.text2, required this.method});
  final String text1, text2;
  final Widget method;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: TextStyle(
            fontFamily: 'roboto',
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xff4E5D78),
          ),
        ),
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => method));
            },
            child: Text(
              text2,
              style: TextStyle(
                fontFamily: 'roboto',
                fontSize: 12,
                color: AppMainColor.primaryColor,
              ),
            ))
      ],
    );
  }
}
