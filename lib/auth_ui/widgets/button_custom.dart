import 'package:flutter/material.dart';
import '../../utilities/responsive.dart';

class ButtonCustom extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const ButtonCustom({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.sizeW(context, 287),
      height: Responsive.sizeH(context, 40),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(elevation: 0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 14, fontFamily: 'roboto'),
        ),
      ),
    );
  }
}
