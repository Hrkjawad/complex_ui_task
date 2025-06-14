import 'package:flutter/material.dart';
import '../../utilities/responsive.dart';
class OrUI extends StatelessWidget {
  const OrUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: Responsive.sizeW(16),
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: Responsive.sizeW(115),
          child: Divider(
            color: Color(0xffdcdfe4),
            thickness: 1,
          ),
        ),
        Text(
          "OR",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              fontFamily: 'roboto',
              color: Color(0xff4E5D78)),
        ),
        SizedBox(
          width: Responsive.sizeW(115),
          child: Divider(
            color: Color(0xffdcdfe4),
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
