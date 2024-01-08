
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/welcome.jpg', height: double.infinity, fit: BoxFit.cover),
          Positioned(
            top: 100, left: 0, right: 0,
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  color: Colors.white,
                  letterSpacing: 5,
                  fontWeight: FontWeight.bold
                ),
                children: [
                  TextSpan(
                    text: 'طائرة',
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)
                  ),
                  const TextSpan(text: 'السلام'),
                  TextSpan(
                    text: '\nسافر نحو وجهتك',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.white70,
                      fontSize: 24,
                      height: 2,
                      letterSpacing: 1
                    )
                  ),
                ]
              ),
            ),
          ),
          Positioned(
            bottom: 50, right: 20, left: 20,
            child: ElevatedButton(
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.all(15)
              ),
              child: const Text('ابدأ رحلتك'),
            ),
          )
        ],
      ),
    );
  }
}
