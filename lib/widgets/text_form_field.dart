import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controllerTextField;
  final ValueChanged<String>? onChanged;

  const CustomTextField(
      {required this.hint, this.controllerTextField, this.onChanged});

  get regular => null;

  get colorText3 => null;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controllerTextField,
      onChanged: onChanged,
      style: poppinsTextField.copyWith(
        fontWeight: regular,
        fontSize: 16,
      ),
      decoration: InputDecoration(
          hintText: hint,
          fillColor: textFieldFillColor,
          filled: true,
          hintStyle: poppinsTextField.copyWith(color: colorText3, fontWeight: regular, fontSize: 16),
          contentPadding: const EdgeInsets.only(left: 24, top: 16, bottom: 16),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: colorPrimary, width: 2)),
          focusColor: colorText1),
    );
  }
}

class CustomTextFieldPass extends StatelessWidget {
  final String hint;
  final TextEditingController? controllerTextField;
  final ValueChanged<String>? onChanged;

  const CustomTextFieldPass(
      {required this.hint, this.controllerTextField, this.onChanged});

  get regular => null;

  get colorText3 => null;

  @override
  Widget build(BuildContext context) {
    bool isHiddenPassword = true;

    return TextFormField(
      obscureText: isHiddenPassword,
      controller: controllerTextField,
      onChanged: onChanged,
      style: poppinsTextField.copyWith(
        fontWeight: regular,
        fontSize: 16,
      ),
      decoration: InputDecoration(
        hintText: hint,
        fillColor: textFieldFillColor,
        filled: true,
        contentPadding: const EdgeInsets.only(left: 24, top: 16, bottom: 16),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: colorPrimary, width: 2)),
        focusColor: colorText1,
        suffixIcon: const Icon(Icons.visibility),
        hintStyle: poppinsTextField.copyWith(color: colorText3, fontWeight: regular, fontSize: 16)

      ),
    );
  }
}
