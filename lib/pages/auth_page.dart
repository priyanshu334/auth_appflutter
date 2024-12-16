import 'package:auth_flutter/pages/home_page.dart';
import 'package:auth_flutter/pages/login_or_regiser_page.dart';
import 'package:auth_flutter/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, sanpshot) {
            if (sanpshot.hasData) {
              return HomePage();
            } else {
              return LoginOrRegiserPage();
            }
          }),
    );
  }
}
