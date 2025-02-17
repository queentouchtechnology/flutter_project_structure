// lib/src/features/profile/presentation/views/profile_screen.dart

import 'package:flutter/material.dart';
import 'package:flutter_project_structure/src/config/routes.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _register() {
    final email = _emailController.text;
    final password = _passwordController.text;

    // Registration logic can be added here (e.g., ViewModel interaction)
    print('Register with email: $email, password: $password');
    // Navigator.pop(context); // Example: go back to the login screen
    // Navigator.pushNamed(context, AppRoutes.routes['profile'].toString()); // Example navigation
    Navigator.pushReplacementNamed(
        context, AppRoutes.profile); // Uses the initial route (login)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
