import 'package:crowd_app_2/pages/home_page.dart';
import 'package:crowd_app_2/pages/login_or_register_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // User is logget inn
          if (snapshot.hasData) {
            return HomePage();
          }

          // User is NOT logget inn
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
