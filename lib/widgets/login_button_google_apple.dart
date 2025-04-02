import 'package:flutter/material.dart';
import '../utilities/assets_path.dart';
import '../utilities/responsive.dart';

class LoginButtonGoogleApple extends StatelessWidget {
  const LoginButtonGoogleApple({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Responsive.sizeW(context, 16),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xfff6f7f8),
            elevation: 0,
            padding: EdgeInsets.all(Responsive.sizeW(context, 5)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Responsive.sizeW(context, 4)),
            ),
          ),
          icon: Image.asset(
            ImagesPath.googleIcon,
            width: Responsive.sizeW(context, 15),
            height: Responsive.sizeH(context, 15),
          ),
          label: Text(
            "Log in with Google",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: 'roboto',
                color: Color(0xff4e5d78)),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xfff6f7f8),
            elevation: 0,
            padding: EdgeInsets.all(Responsive.sizeW(context, 5)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Responsive.sizeW(context, 4)),
            ),
          ),
          icon: Icon(
            Icons.apple,
            size: 24,
            color: Color(0xff4e5d78),
          ),
          label: Text(
            "Log in with Apple",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                fontFamily: 'roboto',
                color: Color(0xff4e5d78)),
          ),
        ),
      ],
    );
  }
}
