import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taskmanager/ui/screens/login_screen.dart';
import 'package:taskmanager/ui/utils/assets_utils.dart';
import 'package:taskmanager/ui/screens/splash_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLogin();
  }

  void navigateToLogin() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SvgPicture.asset(
              AssetsUtils.backgroundSVG,
              fit: BoxFit.fitHeight,
            ),
            // decoration: const BoxDecoration(
            //   color: Colors.blue,
            // ) ,
          ),
          Center(
            child: SvgPicture.asset(
              AssetsUtils.logoSVG,
              width: 90.0,
              fit: BoxFit.scaleDown,
            ),
          )
        ],
      ),
    );
  }
}
