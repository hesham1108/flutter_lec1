import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? textFieldController;
  final TextInputType? keyboardType;
  final int? maxLength;
  final bool required;
  final String? Function(String?)? validator;
  final String? errorMsg;
  final double padding;
  const CustomTextFormField({
    super.key,
    required this.textFieldController,
    this.keyboardType,
    this.maxLength,
    required this.required,
    this.validator,
    this.errorMsg,
    this.padding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: TextFormField(
        controller: textFieldController,
        maxLength: maxLength,
        keyboardType: keyboardType,
        validator: required
            ? (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a valid $errorMsg';
                }
                if (validator != null) {
                  return validator!(value);
                }

                return null;
              }
            : null,
      ),
    );
  }
}
