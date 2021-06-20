import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rumahberbagi_mobile/pages/home.dart';
import 'package:rumahberbagi_mobile/utils/router_utils.dart';
import '../extension/validation_email_extension.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _isHidePassword = true;

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
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: (value) {
                      if (!kReleaseMode) {
                        print(value);
                      }
                    },
                    validator: (value) {
                      if (!value.isValidEmail()) {
                        return 'Please enter valid email';
                      }
                      if (value == null || value.isEmpty) {
                        return 'Email must not be empty';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isHidePassword,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          setState(() => _isHidePassword = !_isHidePassword);
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
