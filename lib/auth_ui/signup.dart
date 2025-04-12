import 'package:complex_ui_task/auth_ui/login.dart';
import 'package:complex_ui_task/feed_ui/home.dart';
import 'package:complex_ui_task/utilities/app_main_color.dart';
import 'package:complex_ui_task/auth_ui/widgets/auth_appbar.dart';
import 'package:complex_ui_task/auth_ui/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../utilities/responsive.dart';
import '../auth_ui/widgets/login_button_google_apple.dart';
import '../auth_ui/widgets/passwordField_custom.dart';
import '../auth_ui/widgets/radio_button_custom.dart';
import '../auth_ui/widgets/textform_custom.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _birthDate = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
    _name.dispose();
    _birthDate.dispose();
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
                  "Getting Started",
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
                    "Create an account to continue and connect with the people.",
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
                  height: Responsive.sizeH(context, 530),
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
                          LoginButtonGoogleApple(),
                          Row(
                            spacing: Responsive.sizeW(context, 16),
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: Responsive.sizeW(context, 115),
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
                                width: Responsive.sizeW(context, 115),
                                child: Divider(
                                  color: Color(0xffdcdfe4),
                                  thickness: 1,
                                ),
                              ),
                            ],
                          ),
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
                          TextFormFieldCustomized(
                            controller: _name,
                            hintText: "Your Name",
                            icon: const Icon(
                              Icons.face,
                              color: Color(0xff4e5d78),
                            ),
                            keyboardType: TextInputType.name,
                            validator: (name) {
                              if (name == null || name.isEmpty) {
                                return "Please fill this";
                              }
                              if (name.length < 8) {
                                return "Please enter your full name";
                              }
                              return null;
                            },
                          ),
                          PasswordTextField(
                            passwordController: _password,
                          ),
                          TextFormFieldCustomized(
                            controller: _birthDate,
                            hintText: "Date of birth",
                            icon: const Icon(
                              Icons.calendar_today_outlined,
                              color: Color(0xff4e5d78),
                            ),
                            keyboardType: TextInputType.datetime,
                            validator: (birthDate) {
                              if (birthDate == null ||
                                  birthDate.trim().isEmpty) {
                                return "Please enter your birth date.";
                              }
                              final dateFormat = DateFormat("dd/MM/yyyy");
                              try {
                                DateTime parsedDate =
                                    dateFormat.parseStrict(birthDate);
                                if (parsedDate.isAfter(DateTime.now())) {
                                  return "Birth date cannot be in the future.";
                                }
                              } catch (e) {
                                return "Please enter a valid date (DD/MM/YYYY).";
                              }
                              return null;
                            },
                          ),
                          RadioButtonCustom(),
                          ButtonCustom(
                            text: "Sign Up",
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
                              Text(
                                "Already have an account?",
                                style: TextStyle(
                                  fontFamily: 'roboto',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff4E5D78),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  },
                                  child: Text(
                                    "Sign In",
                                    style: TextStyle(
                                      fontFamily: 'roboto',
                                      fontSize: 12,
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
