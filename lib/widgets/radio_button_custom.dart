import 'package:flutter/material.dart';

import '../utilities/responsive.dart';

class RadioButtonCustom extends StatelessWidget {
  RadioButtonCustom({super.key});
  final List<String> options = ['Male', 'Female'];
  @override
  Widget build(BuildContext context) {
    String selectedOption = options[0];
    return StatefulBuilder(builder: (context, setState) {
      return Container(
          width: Responsive.sizeW(context, 350),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Responsive.sizeW(context, 4)),
            border: Border.all(
              color: Color(0xffdcdfe4),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: Responsive.sizeW(context, 10)),
                child: Icon(
                  Icons.male_rounded,
                  size: 25,
                  color: Color(0xff4e5d78),
                ),
              ),
              Radio(
                value: options[0],
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              Text(
                "Male",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: selectedOption == options[0]
                      ? Color(0xff4e5d78)
                      : Color(0xff959eae),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Radio(
                value: options[1],
                groupValue: selectedOption,
                onChanged: (value) {
                  setState(() {
                    selectedOption = value!;
                  });
                },
              ),
              Text(
                "Female",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 14,
                  color: selectedOption == options[1]
                      ? Color(0xff4e5d78)
                      : Color(0xff959eae),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          )

      );
    });
  }
}
