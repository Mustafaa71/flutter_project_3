import 'package:elegant_notification/elegant_notification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_3/constants.dart';
import 'package:flutter_project_3/pages/main_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _RegistrationState();
}

class _RegistrationState extends State<SignUpPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPassword = TextEditingController();

  Future signUp() async {
    try {
      if (isPasswordMatched()) {
        final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
        );
        print('$result');
      }
    } catch (e) {
      print('$e');
    }
    // ignore: use_build_context_synchronously
    ElegantNotification.error(
      title: const Text('Wrong access'),
      description: const Text('You enter a wrong information try again'),
      animationDuration: const Duration(seconds: 2),
    ).show(context);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const MainPage(),
      ),
    );
  }

  bool isPasswordMatched() {
    if (passwordController.text.trim() == confirmPassword.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    confirmPassword.dispose();
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
          const SizedBox(height: 80.0),
          Image.asset('images/jahez.jpg'),
          Text(
            'New SignUpPage',
            style: Constants.kCheckBoxTextStyle,
          ),
          Text(
            'Create an account to use Jahez',
            style: Constants.kCheckBoxTextStyle,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: confirmPassword,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Checkbox(
                    value: false,
                    onChanged: (newvalue) => null,
                  ),
                ),
              ),
              const Text(
                'I agree to the Terms of Service and Privacy Policy',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          InkWell(
            onTap: () {
              signUp();
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
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
