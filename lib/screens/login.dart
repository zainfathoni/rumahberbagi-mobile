import 'package:flutter/material.dart';
import '../utils/router_utils.dart';
import '../widgets/form_fields/email_form_field.dart';
import '../widgets/form_fields/password_form_field.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Rumah Berbagi'),
            const SizedBox(height: 12),
            Form(
              key: _formKey,
              child: Column(
                children: const <Widget>[
                  EmailFormField(),
                  SizedBox(height: 12),
                  PasswordFormField(),
                ],
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, RouteName.home);
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
