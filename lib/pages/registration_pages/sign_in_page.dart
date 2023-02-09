import 'package:elegant_notification/elegant_notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/pages/main_page.dart';
import 'package:flutter_project_3/pages/registration_pages/sign_up_page.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signIn() async {
    try {
      final result = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      print('$result');
    } catch (e) {
      print('$e');
      ElegantNotification.error(
        title: const Text('Wrong access'),
        description: const Text('You enter a wrong information try again'),
        animationDuration: const Duration(seconds: 1),
      ).show(context);
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text('Sign In'),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          const SizedBox(height: 120.0),
          Image.asset('images/jahez.jpg'),
          Text(
            'Sign in',
            style: Constants.kContentTextStyles,
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 8.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(height: 8.0),
          InkWell(
            onTap: () {
              signIn();
            },
            child: Container(
              decoration: const BoxDecoration(
                color: Constants.kAppbarColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              width: double.infinity,
              height: 70.0,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Center(
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24.0),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
            child: Container(
              decoration: const BoxDecoration(
                border: Border.fromBorderSide(
                  BorderSide(color: Constants.kAppbarColor),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              width: double.infinity,
              height: 70.0,
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: const Center(
                child: Text(
                  'New? Register Now',
                  style: TextStyle(
                    color: Constants.kAppbarColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
