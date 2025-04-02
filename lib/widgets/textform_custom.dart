import 'package:complex_ui_task/utilities/responsive.dart';
import 'package:flutter/material.dart';

class TextFormFieldCustomized extends StatelessWidget {
  const TextFormFieldCustomized(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.keyboardType,
      required this.controller,
      this.validator});
  final String hintText;
  final Widget icon;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final FormFieldValidator? validator;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: Responsive.sizeW(context, 350),
        child: StatefulBuilder(builder: (context, setState) {
          return TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            validator: validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: icon,
              hintStyle: TextStyle(
                fontSize: 14,
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
                borderSide: BorderSide(
                  color: Color(0xffdcdfe4),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Responsive.sizeW(context, 4),
                ),
                borderSide: BorderSide(
                  color: Color(0xffdcdfe4),
                ),
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
              errorStyle: TextStyle(fontSize: 14, fontFamily: 'roboto'),
              filled: true,
              fillColor: Colors.white,
            ),
          );
        }),
      ),
    );
  }
}
