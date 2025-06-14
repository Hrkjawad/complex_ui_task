import 'package:flutter/material.dart';
import '../../utilities/responsive.dart';

class CardBox extends StatelessWidget {
  const CardBox({super.key, required this.widget, required this.height});
final Widget widget;
final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.sizeW(333),
      height: Responsive.sizeH(height),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius:
          BorderRadius.circular(Responsive.sizeW(20)),
        ),
        child: Padding(
          padding: EdgeInsets.all(Responsive.sizeW(25)),
          child: widget,
        ),
      ),
    );
  }
}
