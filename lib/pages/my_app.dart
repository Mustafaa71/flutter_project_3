import 'package:flutter/material.dart';
import 'package:flutter_project_3/pages/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,

      /// routes: {
      ///   '/main': (context) => const MainPage(),
      ///   'signIn': (context) => SignInPage(),
      ///   'signUp': (context) => SignUpPage(),
      ///   'contactUS': (context) => ContactUsPage(),
      /// },
    );
  }
}
