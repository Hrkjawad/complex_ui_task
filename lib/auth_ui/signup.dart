import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utilities/assets_path.dart';

class SignUp extends ConsumerWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //Responsive Design
    double sizeH(double size) {
      final screenHeight = MediaQuery.of(context).size.height;
      const double baselineHeight = 849;
      return size * (screenHeight / baselineHeight);
    }

    double sizeW(double size) {
      final screenWidth = MediaQuery.of(context).size.width;
      const double baselineWidth = 375;
      return size * (screenWidth / baselineWidth);
    }

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Image.asset(ImagesPath.mainLogo),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: sizeW(20)),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(sizeW(4)),
                    )),
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      "English (UK)",
                      style: TextStyle(
                          fontSize: sizeW(16), color: Color(0xff959eae)),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_outlined,
                      size: sizeW(24),
                      color: Color(0xff4e5d78),
                    )
                  ],
                )),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: sizeH(30)),
        child: Center(
          child: Column(
            spacing: sizeW(10),
            children: [
              Text(
                "Getting Started",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff4E5D78),
                ),
              ),
              SizedBox(
                width: sizeW(281),
                child: Text(
                  "Create an account to continue and connect with the people.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff4E5D78),
                  ),
                ),
              ),
              SizedBox(
                height: sizeH(15),
              ),
              Container(
                width: sizeW(327),
                height: sizeH(507),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(sizeW(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(sizeW(25)),
                  child: Column(
                    spacing: sizeW(15),
                    children: [
                      Row(
                        spacing: sizeW(16),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(sizeW(5)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(sizeW(4)),
                              ),
                            ),
                            icon: Image.asset(
                              ImagesPath.googleIcon,
                              width: sizeW(15),
                              height: sizeH(15),
                            ),
                            label: Text(
                              "Log in with Google",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'roboto',
                                  color: Color(0xff4e5d78)),
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(sizeW(5)),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(sizeW(4)),
                              ),
                            ),
                            icon: Icon(
                              Icons.apple,
                              size: 25,
                            ),
                            label: Text(
                              "Log in with Apple",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff4e5d78)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        spacing: sizeW(16),
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: sizeW(115),
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
                            width: sizeW(115),
                            child: Divider(
                              color: Color(0xffdcdfe4),
                              thickness: 1,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
