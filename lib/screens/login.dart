import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rumahberbagi_mobile/utils/router_utils.dart';
import 'package:rumahberbagi_mobile/widgets/form_fields/email_form_field.dart';

class Login extends HookWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final _hidePassword = useState(true);

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
                  TextFormField(
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
                  )
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
