import 'package:flutter/material.dart';

import '../../utilities/app_main_color.dart';
import '../../utilities/assets_path.dart';

class LikeCommentShareSection extends StatelessWidget {
  LikeCommentShareSection({super.key});
  final TextStyle textStyle = TextStyle(
    fontFamily: 'roboto',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppMainColor.textColor,
  );
  final TextEditingController _post = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          //like,comment,share
          Divider(
            thickness: 1,
            color: Color(0x334E5D78),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite,
                color: AppMainColor.blueColor[900],
              ),
              Text("Like",
                  style: textStyle.copyWith(
                      color: AppMainColor.blueColor[900])),
              SizedBox(
                width: 65,
              ),
              Icon(
                Icons.chat_rounded,
                color: AppMainColor.textColor,
              ),
              Text("Comments", style: textStyle),
              SizedBox(
                width: 65,
              ),
              Icon(
                Icons.share,
                color: AppMainColor.textColor,
              ),
              Text("Share", style: textStyle),
            ],
          ),
          Divider(
            thickness: 1,
            color: Color(0x334E5D78),
          ),
          //comment section
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              spacing: 10,
              children: [
                ClipOval(
                  child: Image.asset(
                    ImagesPath.avatar2,
                  ),
                ),
                Expanded(
                  child: TextFormField(
                    controller: _post,
                    keyboardType: TextInputType.text,
                    autovalidateMode:
                    AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      hintText: "Write a comment...",
                      hintStyle: const TextStyle(
                        fontSize: 12,
                        fontFamily: 'roboto',
                        color: Color(0xff959eae),
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                                Icons.gif_box_outlined),
                            color: AppMainColor.textColor,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.photo_outlined),
                            color: AppMainColor.textColor,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.face),
                            color: AppMainColor.textColor,
                          ),
                        ],
                      ),
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
                        borderSide:
                        const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide:
                        const BorderSide(color: Colors.red),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffebf2ff),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.send,
                      color: AppMainColor.blueColor[900],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
    );
  }
}
