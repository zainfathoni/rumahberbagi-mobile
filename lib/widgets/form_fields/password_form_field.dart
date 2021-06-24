import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordFormField extends HookWidget {
  const PasswordFormField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _hidePassword = useState(true);

    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      obscureText: _hidePassword.value,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Please enter a secure password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        suffixIcon: IconButton(
          icon: Icon(Icons.visibility),
          onPressed: () {
            _hidePassword.value = !_hidePassword.value;
          },
        ),
      ),
      onChanged: (value) {
        if (!kReleaseMode) {
          print(value);
        }
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password must not be empty';
        }
        return null;
      },
    );
  }
}
