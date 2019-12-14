import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Form Sample',
      home: LoginFormScreen(),
    );
  }
}

class LoginFormScreen extends StatefulWidget {
  @override
  _LoginFormScreenState createState() => _LoginFormScreenState();
}

class _LoginFormScreenState extends State<LoginFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Login Form Sample'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(padding: EdgeInsets.all(20.0)),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextFormField(
                    maxLength: 16,
                    autocorrect: true,
                    enableInteractiveSelection: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      filled: true,
                      helperText: 'No more than 16 characters.',
                      labelText: 'UserName *',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: PasswordField(
                    helperText: 'No more than 8 characters.',
                    labelText: 'Password *',
                  )),
            ]));
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.hintText,
    this.labelText,
    this.helperText,
  });

  final String hintText;
  final String labelText;
  final String helperText;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  TextInputType _textInputType = TextInputType.visiblePassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      autocorrect: false,
      enableInteractiveSelection: false,
      maxLength: 8,
      enableSuggestions: false,
      keyboardType: _textInputType,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(
            _obscureText ? Icons.visibility : Icons.visibility_off,
            semanticLabel: _obscureText ? 'show password' : 'hide password',
          ),
        ),
      ),
    );
  }
}
