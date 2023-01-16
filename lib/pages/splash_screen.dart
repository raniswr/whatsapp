import 'package:flutter/material.dart';
import 'package:whatsapp/pages/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainPage()),
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Image(
          image: AssetImage("assets/logo.png"),
          width: 200,
        ),
      ),
    );
  }
}
