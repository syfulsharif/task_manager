import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/ui/screens/splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/images/background.svg',
              fit: BoxFit.fitHeight,
            ),
            // decoration: const BoxDecoration(
            //   color: Colors.blue,
            // ) ,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: 90.0,
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
