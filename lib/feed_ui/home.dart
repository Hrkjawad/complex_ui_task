import 'package:complex_ui_task/feed_ui/widgets/events_box.dart';
import 'package:complex_ui_task/feed_ui/widgets/home_appbar.dart';
import 'package:complex_ui_task/feed_ui/widgets/post_section.dart';
import 'package:complex_ui_task/utilities/app_main_color.dart';
import 'package:complex_ui_task/utilities/assets_path.dart';
import 'package:complex_ui_task/utilities/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map<String, String>> users = [
    {'name': 'Edilson', 'image': ImagesPath.profile4},
    {'name': 'Afrim', 'image': ImagesPath.profile3},
    {'name': 'Eduardo', 'image': ImagesPath.profile2},
    {'name': 'Afrim', 'image': ImagesPath.profile3},
    {'name': 'Eduardo', 'image': ImagesPath.profile1},
    {'name': 'Edilson', 'image': ImagesPath.profile4},
  ];
  final TextEditingController _post = TextEditingController();
  final TextStyle textStyle = TextStyle(
    fontFamily: 'roboto',
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: AppMainColor.textColor,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 8,
            children: [
              //story section
              ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.sizeW(context, 20),
                      bottom: Responsive.sizeW(context, 20),
                      top: Responsive.sizeW(context, 20)),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 18,
                      children: [
                        Column(
                          spacing: 5,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.blue, width: 2),
                                  ),
                                  child: ClipOval(
                                    child: Image.asset(
                                      ImagesPath.avatar2,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 42,
                                  left: 17,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.add,
                                      size: 14,
                                      color: Color(0xff4E5D78),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "Saleh",
                              style: textStyle,
                            ),
                          ],
                        ),
                        ...List.generate(users.length, (index) {
                          final user = users[index];
                          return Column(
                            spacing: 5,
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  user['image']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(user['name']!, style: textStyle),
                            ],
                          );
                        }),
                      ],
                    ),
                  ),
                ),
              ),
              //add post section
              ColoredBox(
                color: Colors.white,
                child: Padding(
                    padding: EdgeInsets.only(
                        left: Responsive.sizeW(context, 20),
                        right: Responsive.sizeW(context, 20),
                        top: Responsive.sizeW(context, 10)),
                    child: Column(
                      spacing: 12,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            ClipOval(
                              child: Image.asset(
                                ImagesPath.avatar2,
                              ),
                            ),
                            SizedBox(
                              width: Responsive.sizeW(context, 284),
                              height: Responsive.sizeH(context, 32),
                              child: TextFormField(
                                controller: _post,
                                keyboardType: TextInputType.text,
                                autovalidateMode:
                                    AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: "What’s happening?",
                                  hintStyle: TextStyle(
                                    fontSize: 12,
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
                                    borderSide: BorderSide.none,
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      Responsive.sizeW(context, 4),
                                    ),
                                    borderSide: BorderSide.none,
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
                                  filled: true,
                                  fillColor: Color(0x0D4E5D78),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 8,
                          children: [
                            Icon(
                              Icons.videocam_outlined,
                              color: AppMainColor.textColor,
                              size: 16,
                            ),
                            Text(
                              "Live",
                              style: textStyle.copyWith(fontSize: 12),
                            ),
                            SizedBox(
                              width: Responsive.sizeW(context, 16),
                            ),
                            Icon(
                              Icons.insert_photo_outlined,
                              color: AppMainColor.textColor,
                              size: 16,
                            ),
                            Text(
                              "Photo",
                              style: textStyle.copyWith(fontSize: 12),
                            ),
                            SizedBox(
                              width: Responsive.sizeW(context, 16),
                            ),
                            Icon(
                              Icons.face,
                              color: AppMainColor.textColor,
                              size: 16,
                            ),
                            Text(
                              "Feeling",
                              style: TextStyle(
                                  fontFamily: 'roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppMainColor.textColor),
                            ),
                            SizedBox(
                              width: Responsive.sizeW(context, 50),
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Post",
                                  style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                        SizedBox(
                          width: Responsive.sizeW(context, 14),
                        ),
                      ],
                    )),
              ),
              //show post section
              ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: Responsive.sizeW(context, 20),
                      right: Responsive.sizeW(context, 20),
                      top: Responsive.sizeW(context, 10)),
                  child: Column(
                    spacing: 9,
                    children: [
                      PostSection(
                        imagePath: ImagesPath.avatar1,
                        name: 'Sepural Gallery ',
                        postDate: '15h. Public',
                        commentsNum: '3',
                        shareNum: '17',
                        imageGrid: Image.asset(
                          ImagesPath.firstImage,
                          width: Responsive.sizeW(context, 335),
                          height: Responsive.sizeH(context, 185),
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              //recent event
              ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Responsive.sizeW(context, 20),
                    right: Responsive.sizeW(context, 20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recent Event",
                            style: textStyle,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_horiz_rounded)),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0x334E5D78),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      EventBox(
                        imagePath: ImagesPath.logo2,
                        titleText: 'Graduation Ceremony',
                        subText:
                            'The graduation ceremony is also sometimes called...',
                        seenNum: '8',
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      EventBox(
                        imagePath: ImagesPath.logo1,
                        titleText: 'Photography Ideas',
                        subText:
                            'Reflections. Reflections work because they can create...',
                        seenNum: '11',
                      ),
                    ],
                  ),
                ),
              ),
              //post2
              ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Responsive.sizeW(context, 20),
                    right: Responsive.sizeW(context, 20),
                  ),
                  child: Column(
                    children: [
                      PostSection(
                        imagePath: ImagesPath.avatar6,
                        name: 'Prothinidi Thomas',
                        postDate: '2d. Public',
                        commentsNum: '3',
                        shareNum: '5',
                        imageGrid: StaggeredGrid.count(
                            crossAxisCount: 4,
                            mainAxisSpacing: 8,
                            crossAxisSpacing: 8,
                            children: [
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    ImagesPath.displayImage1,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    ImagesPath.displayImage3,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              StaggeredGridTile.count(
                                crossAxisCellCount: 2,
                                mainAxisCellCount: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    ImagesPath.displayImage2,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ),
              ),

              //comments
              Padding(
                padding: EdgeInsets.only(
                  left: Responsive.sizeW(context, 20),
                  right: Responsive.sizeW(context, 20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(ImagesPath.avatar8),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Container(
                          width: Responsive.sizeW(context, 301),
                          height: Responsive.sizeH(context, 91),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('Swapan Bala',
                                    style: textStyle.copyWith(height: 1.5)),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  spacing: 6,
                                  children: [
                                    Text('9h ago',
                                        style: textStyle.copyWith(
                                            fontSize: 12,
                                            color: Color(0x994E5D78),
                                            fontWeight: FontWeight.w400,
                                            height: 1.5)),
                                    SizedBox(
                                      width: 281,
                                      child: Text(
                                          'Looks amazing and breathtaking. Been there, beautiful!',
                                          style: textStyle.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w400,
                                              height: 1.5)),
                                    ),
                                  ],
                                ),
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_horiz_rounded)),
                                contentPadding: EdgeInsets.only(left: 10),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            spacing: 16,
                            children: [
                              Text('Like',
                                  style: textStyle.copyWith(
                                      fontSize: 10,
                                      color: Color(0x994E5D78),
                                      fontWeight: FontWeight.w400)),
                              Text('Reply',
                                  style: textStyle.copyWith(
                                      fontSize: 10,
                                      color: Color(0x994E5D78),
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Responsive.sizeW(context, 58),
                  right: Responsive.sizeW(context, 20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(ImagesPath.avatar6),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      spacing: 5,
                      children: [
                        Container(
                          width: Responsive.sizeW(context, 259),
                          height: Responsive.sizeH(context, 165),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text('Whitechapel Gallery',
                                      style: textStyle.copyWith(height: 1.5)),
                                  subtitle: Text('9h ago',
                                      style: textStyle.copyWith(
                                          fontSize: 12,
                                          color: Color(0x994E5D78),
                                          fontWeight: FontWeight.w400,
                                          height: 1.5)),
                                  trailing: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_horiz_rounded)),
                                  contentPadding: EdgeInsets.only(left: 10),
                                ),
                                Container(
                                  width: Responsive.sizeW(context, 239),
                                  height: Responsive.sizeH(context, 69),
                                  decoration: BoxDecoration(
                                      color: Color(0xfff6f7f8),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      spacing: 6,
                                      children: [
                                        Text('Replying to Swapan Bala',
                                            style: textStyle.copyWith(
                                                color: Color(0x994E5D78))),
                                        Text(
                                            'Looks amazing and breathtaking. Been there, beautiful!',
                                            style: textStyle.copyWith(
                                                fontSize: 12,
                                                color: Color(0x994E5D78),
                                                fontWeight: FontWeight.w400,
                                                height: 1.5)),
                                      ],
                                    ),
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                          text: 'Thank you ',
                                          style: textStyle.copyWith(
                                              fontSize: 12,
                                              color: Color(0x994E5D78),
                                              fontWeight: FontWeight.w400,
                                              height: 1.5)),
                                      TextSpan(
                                          text: '@Swapan Bala',
                                          style: textStyle.copyWith(
                                              fontSize: 14, height: 1.5)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            spacing: 16,
                            children: [
                              Text('Like',
                                  style: textStyle.copyWith(
                                      fontSize: 10,
                                      color: Color(0x994E5D78),
                                      fontWeight: FontWeight.w400)),
                              Text('Reply',
                                  style: textStyle.copyWith(
                                      fontSize: 10,
                                      color: Color(0x994E5D78),
                                      fontWeight: FontWeight.w400)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: Responsive.sizeW(context, 20)),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "See 1 more comment",
                    style: textStyle.copyWith(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ),

              //birthdays
              ColoredBox(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: Responsive.sizeW(context, 20),
                    right: Responsive.sizeW(context, 20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Birthdays",
                            style: textStyle,
                          ),
                          TextButton(onPressed: () {}, child: Text("See All"))
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0x334E5D78),
                      ),
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Image.asset(
                          ImagesPath.avatar2,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          "Edilson De Carvalho",
                          style: textStyle,
                        ),
                        subtitle: Text(
                          "Birthday today",
                          style: textStyle.copyWith(
                              fontSize: 12, color: Colors.grey),
                        ),
                        trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz_rounded)),
                      ),
                      Row(
                        spacing: 10,
                        children: [
                          SizedBox(
                            width: Responsive.sizeW(context, 291),
                            height: Responsive.sizeH(context, 34),
                            child: TextFormField(
                              controller: _post,
                              keyboardType: TextInputType.text,
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              decoration: InputDecoration(
                                hintText: "Write on his inbox",
                                hintStyle: const TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'roboto',
                                  color: Color(0xff959eae),
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
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: const Color(0xffebf2ff),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                size: 16,
                                Icons.send,
                                color: AppMainColor.blueColor[900],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: Responsive.sizeW(context, 335),
                        height: Responsive.sizeH(context, 73),
                        decoration: BoxDecoration(
                            color: Color(0xfff6f7f8),
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image.asset(ImagesPath.logo3),
                              title: Text(
                                "Upcoming birthdays",
                                style: textStyle,
                              ),
                              subtitle: Text(
                                "See 12 others have upcoming birthdays",
                                style: textStyle.copyWith(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            )),
                      ),
                      SizedBox(height: 14),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.white,
          height: 56,
          destinations: [
            NavigationDestination(
                icon: Icon(
                  Icons.grid_view,
                  color: AppMainColor.textColor,
                ),
                label: "Feed"),
            NavigationDestination(
                icon: Icon(
                  Icons.people_outline,
                  color: AppMainColor.textColor,
                ),
                label: "My community"),
            NavigationDestination(
                icon: Icon(
                  Icons.public,
                  color: AppMainColor.textColor,
                ),
                label: "Explore"),
            NavigationDestination(
                icon: Icon(
                  Icons.notifications,
                  color: AppMainColor.textColor,
                ),
                label: "Notification"),
            NavigationDestination(
                icon: Icon(
                  Icons.settings,
                  color: AppMainColor.textColor,
                ),
                label: "Settings"),
          ]),
    );
  }
}
