import 'package:auth_flutter/pages/login_page.dart';
import 'package:auth_flutter/pages/register_page.dart';
import 'package:flutter/material.dart';

class LoginOrRegiserPage extends StatefulWidget {
  const LoginOrRegiserPage({super.key});

  @override
  State<LoginOrRegiserPage> createState() => _LoginOrRegisterPageState();
}

class _LoginOrRegisterPageState extends State<LoginOrRegiserPage> {
  bool showLoginPage = true;
  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(onTap: togglePages);
    } else {
      return RegisterPage(onTap: togglePages,);
    }
  }
}
