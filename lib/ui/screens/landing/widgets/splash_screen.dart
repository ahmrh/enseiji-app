import 'package:enseiji_app/ui/screens/landing/widgets/landing_screen.dart';
import 'package:enseiji_app/ui/themes/theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: _opacity,
          duration: Duration(seconds: 3),
          child: Text(
            "円セイジ"
          ),
          
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(milliseconds: 500),
      () {
        setState(() {
          _opacity = 1.0;
        });
      },
    );

    Future.delayed(
      Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LandingScreen(),
          ),
        );
      },
    );
  }
}
