import 'package:flutter/material.dart';
import '../../utilities/assets_path.dart';
import '../../utilities/responsive.dart';

AppBar authAppBar(context){
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    title: Image.asset(ImagesPath.mainLogo),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: Responsive.sizeW(20)),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0.5,
                shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(Responsive.sizeW(4)),
                )),
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "English (UK)",
                  style: TextStyle(fontSize: 16, color: Color(0xff959eae)),
                ),
                Icon(
                  Icons.keyboard_arrow_down_outlined,
                  size: Responsive.sizeW(24),
                  color: Color(0xff4e5d78),
                )
              ],
            )),
      )
    ],
  );
}
