// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_fic8_final_g3/common/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Function(String value)? onChanged;
  final bool obscureText;
  final TextInputType textInputType;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.label,
    this.onChanged,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 14.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              color: ColorName.text,
            ),
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          onChanged: onChanged,
          keyboardType: textInputType,
          obscureText: obscureText,
          decoration: InputDecoration(
            // labelText: label,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.grey),
            ),
          ),
        ),
      ],
    );
  }
}
