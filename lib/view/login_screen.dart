import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LogInState();
  }
}

class LogInState extends State<LogInScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  void callSetState(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(18.0),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Log in to TikTok',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                const Text(
                  'Manage your account, check notifications, comment on videos, and more.',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email address',
                    prefixIcon: Icon(Icons.email),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  autocorrect: false,
                  validator: null,
                  onSaved: null,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.password),
                  ),
                  obscureText: true,
                  autocorrect: false,
                  validator: null,
                  onSaved: null,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                FilledButton.tonal(
                  onPressed: () {},
                  child: const Text('Log In'),
                ),
                const SizedBox(
                  height: 150.0,
                ),
                const Text(
                  'By continuing, you agree to our Terms of Service and acknowledge that you have read our Privacy Policy to learn how we collect, use, and share your data.',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text("Don't have an account?"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
