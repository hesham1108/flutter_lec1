import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_lec1/old_lecs/form_task/widgets/custom_text_form_field.dart';

class FormScreen extends StatelessWidget {
  FormScreen({super.key});

  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Form'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            // TextFormField(
            //   controller: _phoneController,
            //   maxLength: 11,
            //   keyboardType: TextInputType.phone,
            //   validator: (String? value) {
            //     if (value == null || value.isEmpty) {
            //       return 'Please enter a valid phone number';
            //     }
            //     if (value.endsWith('9')) {
            //       return 'phone number shouldn\'t end with number 9 ';
            //     }
            //     return null;
            //   },
            // ),
            CustomTextFormField(
              padding: 15,
              textFieldController: _phoneController,
              required: true,
              keyboardType: TextInputType.phone,
              maxLength: 11,
              errorMsg: "phone number",
              validator: (String? value) {
                if (value!.endsWith('9')) {
                  return 'phone number shouldn\'t end with number 9 ';
                }
                return null;
              },
            ),
            Image.asset(""),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  debugPrint(_phoneController.text);
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
