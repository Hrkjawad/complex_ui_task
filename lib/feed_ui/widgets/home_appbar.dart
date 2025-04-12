import 'package:flutter/material.dart';
import '../../utilities/assets_path.dart';
import '../../utilities/responsive.dart';

AppBar homeAppBar(context) {
  final TextEditingController search = TextEditingController();
  return AppBar(
    toolbarHeight: 62,
    leadingWidth: 72,
    elevation: 0,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    leading: Padding(
      padding: EdgeInsets.only(left: Responsive.sizeW(context, 15)),
      child: Image.asset(ImagesPath.avatar2),
    ),
    title: SizedBox(
      width: Responsive.sizeW(context, 246),
      height: Responsive.sizeH(context, 32),
      child: TextFormField(
        controller: search,
        keyboardType: TextInputType.text,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: "Search for something here...",
          prefixIcon: Icon(Icons.search),
          hintStyle: TextStyle(
            fontSize: 14,
            fontFamily: 'roboto',
            color: const Color(0xff959eae),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: Responsive.sizeW(context, 15),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Responsive.sizeW(context, 4),
            ),
            borderSide: BorderSide(
              color: Color(0xffdcdfe4),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Responsive.sizeW(context, 4),
            ),
            borderSide: BorderSide(
              color: Color(0xffdcdfe4),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Responsive.sizeW(context, 4),
            ),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              Responsive.sizeW(context, 4),
            ),
            borderSide: const BorderSide(
              color: Colors.red,
            ),
          ),
          errorStyle: TextStyle(fontSize: 14, fontFamily: 'roboto'),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.messenger_outline_rounded,
            size: 32,
            color: Color(0xff4E5D78),
          ))
    ],
  );
}
