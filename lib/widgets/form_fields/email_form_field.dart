import 'package:flutter/material.dart';
import '../../extensions/email_validator.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'Please enter a valid email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: (value) {
        if (!value.isValidEmail()) {
          return 'Please enter valid email';
        }
        if (value == null || value.isEmpty) {
          return 'Email must not be empty';
        }
        return null;
      },
    );
  }
}
