import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final String username;
  final String email;
  final String password;
  
  const LoginScreen({
    super.key, 
    required this.username, 
    required this.email, 
    required this.password
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameOrEmailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _message;

  @override
  void dispose() {
    _usernameOrEmailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      final enteredUsernameOrEmail = _usernameOrEmailController.text;
      final enteredPassword = _passwordController.text;
      
      // Check if the entered credentials match the registered user
      if ((enteredUsernameOrEmail == widget.username || 
           enteredUsernameOrEmail == widget.email) && 
          enteredPassword == widget.password) {
        setState(() {
          _message = 'Login successful!';
        });
      } else {
        setState(() {
          _message = 'Login failed. Invalid credentials.';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _usernameOrEmailController,
                decoration: const InputDecoration(
                  labelText: 'Username or Email',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username or email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _login,
                child: const Text('Login'),
              ),
              if (_message != null)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    _message!,
                    style: TextStyle(
                      color: _message == 'Login successful!' ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
