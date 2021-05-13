import 'package:flutter/material.dart';
import '../constants.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;

  TextFieldWidget({this.hintText, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Icon(
            icon,
            color: kPrimaryColor,
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
