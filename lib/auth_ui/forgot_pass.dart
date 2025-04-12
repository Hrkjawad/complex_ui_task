import 'package:complex_ui_task/auth_ui/login.dart';
import 'package:complex_ui_task/utilities/app_main_color.dart';
import 'package:complex_ui_task/auth_ui/widgets/auth_appbar.dart';
import 'package:complex_ui_task/auth_ui/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../feed_ui/home.dart';
import '../utilities/responsive.dart';
import '../auth_ui/widgets/textform_custom.dart';

class ForgotPassword extends ConsumerStatefulWidget {
  const ForgotPassword({super.key});

  @override
  ConsumerState<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends ConsumerState<ForgotPassword> {
  final TextEditingController _email = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: authAppBar(context),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: Responsive.sizeH(context, 40)),
            child: Column(
              spacing: Responsive.sizeH(context, 10),
              children: [
                Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4E5D78),
                  ),
                ),
                SizedBox(
                  width: Responsive.sizeW(context, 281),
                  child: Text(
                    "Enter your details to receive a rest link",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'roboto',
                      fontSize: 14,
                      color: Color(0xff4E5D78),
                    ),
                  ),
                ),
                SizedBox(
                  height: Responsive.sizeH(context, 20),
                ),
                SizedBox(
                  width: Responsive.sizeW(context, 333),
                  height: Responsive.sizeH(context, 214),
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(Responsive.sizeW(context, 20)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(Responsive.sizeW(context, 25)),
                      child: Column(
                        spacing: Responsive.sizeW(context, 12),
                        children: [
                          TextFormFieldCustomized(
                            controller: _email,
                            hintText: "Your Email",
                            icon: const Icon(
                              Icons.alternate_email_rounded,
                              color: Color(0xff4e5d78),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            validator: (email) {
                              if (email == null || email.trim().isEmpty) {
                                return "Please enter an email address.";
                              }
                              String emailPattern =
                                  r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
                              RegExp regex = RegExp(emailPattern);
                              if (!regex.hasMatch(email)) {
                                return "Please enter a valid email address.";
                              }
                              return null;
                            },
                          ),
                          ButtonCustom(
                            text: "Send",
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()));
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: AppMainColor.primaryColor,
                                size: 15,
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  },
                                  child: Text(
                                    "Back to Sign In",
                                    style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 16,
                                      color: AppMainColor.primaryColor,
                                    ),
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
