import 'package:flutter/material.dart';
import '../../utilities/app_main_color.dart';
import '../../utilities/assets_path.dart';
import '../../utilities/responsive.dart';
import 'like_comment_share_section.dart';

class PostSection extends StatelessWidget {
   PostSection({super.key, required this.imagePath, required this.name, required this.postDate, required this.commentsNum, required this.shareNum, required this.imageGrid});
  final TextStyle textStyle = TextStyle(
    fontFamily: 'roboto',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppMainColor.textColor,
  );
   final String imagePath, name, postDate, commentsNum, shareNum;
   final Widget imageGrid;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 9,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: ClipOval(
            child: Image.asset(
              imagePath,
              width: Responsive.sizeW(45),
              height: Responsive.sizeH(45),
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            name,
            style: textStyle,
          ),
          subtitle: Text(
            postDate,
            style: textStyle.copyWith(
                fontSize: 12, color: Colors.grey),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz_rounded)),
        ),
        imageGrid,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: Responsive.sizeW(60),
              height: Responsive.sizeH(20),
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Image.asset(ImagesPath.avatar3),
                  ),
                  Positioned(
                    left: 14,
                    child: Image.asset(ImagesPath.avatar4),
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
                        "+9",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 144),
            Text(
              "$commentsNum comments",
              style: textStyle.copyWith(
                  color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              "$shareNum Share",
              style: textStyle.copyWith(
                  color: Colors.grey, fontSize: 12),
            ),
          ],
        ),
        //like,comment,share
        LikeCommentShareSection()
      ],
    );
  }
}
