import 'package:complex_ui_task/auth_ui/login.dart';
import 'package:complex_ui_task/auth_ui/widgets/auth_structure.dart';
import 'package:complex_ui_task/auth_ui/widgets/card_box.dart';
import 'package:complex_ui_task/auth_ui/widgets/or_ui_section.dart';
import 'package:complex_ui_task/auth_ui/widgets/ui_last_text_button_widget.dart';
import 'package:complex_ui_task/auth_ui/widgets/validator.dart';
import 'package:complex_ui_task/feed_ui/home.dart';
import 'package:complex_ui_task/auth_ui/widgets/auth_appbar.dart';
import 'package:complex_ui_task/auth_ui/widgets/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      body: AuthStructure(
        firstText: "Getting Started",
        secondText:
            "Create an account to continue and connect with the people.",
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
              TextFormFieldCustomized(
                controller: _name,
                hintText: "Your Name",
                icon: const Icon(
                  Icons.face,
                  color: Color(0xff4e5d78),
                ),
                keyboardType: TextInputType.name,
                validator: Validator.validateName,
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
                validator: Validator.validateBirthDate
              ),
              const RadioButtonCustom(),
              ButtonCustom(
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
              ),
              const UiLastTextButtonWidget(
                text1: "Already have an account?",
                text2: "Sign In",
                method: Login(),
              ),
            ],
          ),
          height: 530,
        ),
      ),
    );
  }
}
