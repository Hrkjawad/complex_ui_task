import 'package:complex_ui_task/auth_ui/forgot_pass.dart';
import 'package:complex_ui_task/auth_ui/signup.dart';
import 'package:complex_ui_task/utilities/app_main_color.dart';
import 'package:complex_ui_task/auth_ui/widgets/auth_appbar.dart';
import 'package:complex_ui_task/auth_ui/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../feed_ui/home.dart';
import '../utilities/responsive.dart';
import '../auth_ui/widgets/login_button_google_apple.dart';
import '../auth_ui/widgets/passwordField_custom.dart';
import '../auth_ui/widgets/textform_custom.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  ConsumerState<Login> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final checkbox = StateProvider<bool>((ref) => false);

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
    _password.dispose();
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
                  "Sign In",
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
                    "Welcome back, you’ve been missed!",
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
                  height: Responsive.sizeH(context, 420),
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
                          PasswordTextField(
                            passwordController: _password,
                          ),
                          Row(
                            children: [
                              Flexible(
                                child: Consumer(builder: (context, ref, child) {
                                  return CheckboxListTile(
                                    contentPadding: EdgeInsets.zero,
                                    title: Text(
                                      "Remember me",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff4E5D78)),
                                    ),
                                    value: ref.watch(checkbox),
                                    onChanged: (newBool) {
                                      ref.read(checkbox.notifier).state =
                                          newBool!;
                                    },
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                  );
                                }),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff4E5D78)),
                                ),
                              ),
                            ],
                          ),
                          ButtonCustom(
                            text: "Sign In",
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
                                "You haven't any account?",
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
                                            builder: (context) => SignUp()));
                                  },
                                  child: Text(
                                    "Sign Up",
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
