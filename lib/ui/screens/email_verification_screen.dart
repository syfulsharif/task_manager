import 'package:flutter/material.dart';
import 'package:taskmanager/ui/widgets/screen_background.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Get Started With',
                style: Theme.of(context).textTheme.titleLarge,
                // style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextField(
                decoration: InputDecoration(hintText: 'Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
