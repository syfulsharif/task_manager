import 'package:flutter/material.dart';
import 'package:taskmanager/ui/widgets/screen_background.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 64,
                ),
                Text(
                  'Your Email Address',
                  style: Theme.of(context).textTheme.titleLarge,
                  // style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'A 6 digit pin will be sent to your email address',
                  style: Theme.of(context).textTheme.bodyMedium,

                ),
                const SizedBox(
                  height: 16,
                ),
                const TextField(
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Have an account?',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, letterSpacing: 0.5),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Sign In'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
