import 'package:flutter/material.dart';

import '../../utilities/app_main_color.dart';
import '../../utilities/assets_path.dart';
import '../../utilities/responsive.dart';

class EventBox extends StatelessWidget {
   EventBox({super.key, required this.imagePath, required this.titleText, required this.subText, required this.seenNum});
  final TextStyle textStyle = TextStyle(
    fontFamily: 'roboto',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppMainColor.textColor,
  );
  final String imagePath, titleText, subText, seenNum;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Responsive.sizeW(335),
        height: Responsive.sizeH(115),
        decoration: BoxDecoration(
            color: Color(0xfffafafb),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0, left: 14, right: 14),
          child: Column(
            children: [
              ListTile(
                leading: Image.asset(imagePath),
                title: Text(
                  titleText,
                  style: textStyle,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Text(
subText,
                    style: textStyle.copyWith(
                        fontSize: 12, color: Color(0xff959eae), fontWeight: FontWeight.w400),
                  ),
                ),
                contentPadding: EdgeInsets.zero,
              ),
              Divider(
                thickness: 1,
                color: Color(0x334E5D78),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("$seenNum Seen", style: textStyle.copyWith(fontSize: 12),),
                  SizedBox(
                    width: 60,
                    height: 20,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 0,
                          child: Image.asset(ImagesPath.avatar4),
                        ),
                        Positioned(
                          left: 14,
                          child: Image.asset(ImagesPath.avatar3),
                        ),
                        Positioned(
                          left: 28,
                          child: Image.asset(ImagesPath.avatar5),
                        ),
                        Positioned(
                          left: 42,
                          child: Container(
                            width: 18,
                            height: 18,
                            decoration: BoxDecoration(
                                color: Color(0xFF4E5D78),
                                shape: BoxShape.circle),
                            child: Text(
                              "+8",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
