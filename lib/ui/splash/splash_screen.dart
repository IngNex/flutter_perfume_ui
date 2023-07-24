import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: size.height * 0.35,
            child: TweenAnimationBuilder(
              duration: const Duration(seconds: 1),
              tween: Tween<double>(begin: 0.0, end: 1.0),
              curve: Curves.elasticOut,
              builder: (context, value, _) {
                return Transform.scale(
                  scale: value,
                  child: _,
                );
              },
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        width: 150,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Perfume's",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            child: Text(
              '© byMaicolDev',
              style: TextStyle(
                  color: Colors.grey.withOpacity(0.4),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
