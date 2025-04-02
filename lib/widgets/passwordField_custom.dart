import 'package:flutter/material.dart';

import '../utilities/responsive.dart';


class PasswordTextField extends StatelessWidget {
  const PasswordTextField(
      {super.key, required this.passwordController});

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    bool isObscure = true;
    return Center(
      child: SizedBox(
        width: Responsive.sizeW(context, 350),
        child: StatefulBuilder(
          builder: (context, setState) {
            return TextFormField(
              obscureText: isObscure,
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              validator: (String? value) {
                if (value!.length < 8) {
                  return 'Password is too short and weak';
                }
                if (value != passwordController.text) {
                  return "Password didn't match";
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
              decoration: InputDecoration(
                hintText: "Create Password",
                prefixIcon: const Icon(Icons.lock_outline_rounded, color: Color(0xff4e5d78),) ,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      isObscure = ! isObscure;
                    });
                  },
                  icon: Icon(isObscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,color: Color(0xff4e5d78)),
                ),
                hintStyle:  TextStyle(
                  fontSize: 14,
                  fontFamily: 'roboto',
                  color: const Color(0xff959eae),
                ),
                contentPadding:  EdgeInsets.symmetric(
                  horizontal: Responsive.sizeW(context,15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Responsive.sizeW(context,4),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xffdcdfe4),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Responsive.sizeW(context,4),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xffdcdfe4),
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Responsive.sizeW(context,4),
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    Responsive.sizeW(context,4),
                  ),
                  borderSide: const BorderSide(
                    color: Colors.red,
                  ),
                ),
                errorStyle: TextStyle(fontSize: 14, fontFamily: 'roboto'),
                filled: true,
                fillColor: Colors.white,
              ),
            );
          },
        ),
      ),
    );
  }
}