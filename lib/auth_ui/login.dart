import 'package:complex_ui_task/auth_ui/forgot_pass.dart';
import 'package:complex_ui_task/auth_ui/signup.dart';
import 'package:complex_ui_task/auth_ui/widgets/auth_structure.dart';
import 'package:complex_ui_task/auth_ui/widgets/card_box.dart';
import 'package:complex_ui_task/auth_ui/widgets/or_ui_section.dart';
import 'package:complex_ui_task/auth_ui/widgets/ui_last_text_button_widget.dart';
import 'package:complex_ui_task/auth_ui/widgets/auth_appbar.dart';
import 'package:complex_ui_task/auth_ui/widgets/button_custom.dart';
import 'package:complex_ui_task/auth_ui/widgets/validator.dart';
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
      body: AuthStructure(
        firstText: "Sign In",
        secondText: "Welcome back, you’ve been missed!",
        widget: CardBox(
          widget: Column(
            spacing: Responsive.sizeW(12),
            children: [
              const LoginButtonGoogleApple(),
              const OrUI(),
              TextFormFieldCustomized(
                controller: _email,
                hintText: "Your Email",
                icon: const Icon(
                  Icons.alternate_email_rounded,
                  color: Color(0xff4e5d78),
                ),
                keyboardType: TextInputType.emailAddress,
                validator: Validator.validateEmail,
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
                          ref.read(checkbox.notifier).state = newBool!;
                        },
                        controlAffinity: ListTileControlAffinity.leading,
                      );
                    }),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              const UiLastTextButtonWidget(
                text1: "You haven't any account?",
                text2: "Sign Up",
                method: SignUp(),
              ),
            ],
          ),
          height: 420,
        ),
      ),
    );
  }
}
