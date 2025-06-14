import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../auth_logic/login_with_google.dart';
import '../../utilities/assets_path.dart';
import '../../utilities/responsive.dart';

class LoginButtonGoogleApple extends ConsumerWidget {
  const LoginButtonGoogleApple({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      spacing: Responsive.sizeW(10),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton.icon(
          onPressed:  () => ref.read(authProvider.notifier).signIn(context),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xfff6f7f8),
            elevation: 0,
            padding: EdgeInsets.all(Responsive.sizeW(5)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Responsive.sizeW(4)),
            ),
          ),
          icon: Image.asset(
            ImagesPath.googleIcon,
            width: Responsive.sizeW(15),
            height: Responsive.sizeH(15),
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
            padding: EdgeInsets.all(Responsive.sizeW(5)),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Responsive.sizeW(4)),
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
