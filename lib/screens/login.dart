import 'package:flutter/material.dart';
import 'package:rumahberbagi_mobile/utils/router_utils.dart';
import 'package:rumahberbagi_mobile/widgets/form_fields/email_form_field.dart';
import 'package:rumahberbagi_mobile/widgets/form_fields/password_form_field.dart';

class Login extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Rumah Berbagi'),
            SizedBox(height: 12),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  EmailFormField(),
                  SizedBox(height: 12),
                  PasswordFormField(),
                ],
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              child: Text('Submit'),
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
