import 'package:complex_ui_task/feed_ui/widgets/bottom_nav.dart';
import 'package:complex_ui_task/feed_ui/widgets/home_appbar.dart';
import 'package:flutter/material.dart';

import '../utilities/app_main_color.dart';
import '../utilities/assets_path.dart';
import '../utilities/responsive.dart';

class CreatePost extends StatelessWidget {
  CreatePost({super.key});
  final TextStyle textStyle = TextStyle(
    fontFamily: 'roboto',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppMainColor.textColor,
  );
  final TextEditingController _post = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  BackButton(),
                  Text(
                    "Create Post",
                    style: textStyle,
                  ),
                  SizedBox(width: Responsive.sizeW(context, 94)),
                  Text(
                    "Visible for",
                    style: textStyle.copyWith(
                        fontSize: 9,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: Responsive.sizeW(context, 70),
                    height: Responsive.sizeH(context, 24),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0.5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  Responsive.sizeW(context, 4)),
                            )),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Friends",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: AppMainColor.blueColor[900]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_outlined,
                              size: Responsive.sizeW(context, 10),
                              color: Color(0xff4e5d78),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Color(0xffdcdfe4),
              ),
              SizedBox(height: 14),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 10,
                children: [
                  SizedBox(
                    width: Responsive.sizeW(context, 32),
                    height: Responsive.sizeH(context, 32),
                    child: ClipOval(child: Image.asset(ImagesPath.avatar2)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 5,
                    children: [
                      Container(
                        width: Responsive.sizeW(context, 289),
                        height: Responsive.sizeH(context, 170),
                        decoration:
                            BoxDecoration(borderRadius: BorderRadius.circular(6)),
                        child: TextFormField(
                          controller: _post,
                          keyboardType: TextInputType.text,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          minLines: null,
                          maxLines: null,
                          expands: true,
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                            hintText: "What’s happening?",
                            hintStyle: textStyle.copyWith(color: Colors.grey),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            filled: true,
                            fillColor: const Color(0x0D4E5D78),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              Row(
                spacing: 8,
                children: [
                  Icon(
                    Icons.videocam_outlined,
                    color: AppMainColor.textColor,
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Live Video",
                      style: textStyle.copyWith(fontSize: 12),
                    ),
                  )
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(
                    Icons.photo_outlined,
                    color: AppMainColor.textColor,
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                    "Photo/Video",
                    style: textStyle.copyWith(fontSize: 12),
                  ),
                  )
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(
                    Icons.face,
                    color: AppMainColor.textColor,
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "Feeling",
                      style: textStyle.copyWith(fontSize: 12),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Post",
                      style: textStyle.copyWith(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
