import 'package:enseiji_app/ui/screens/landing/widgets/splash_screen.dart';
import 'package:enseiji_app/ui/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EnSeijiApp());
}

class EnSeijiApp extends StatelessWidget {
  EnSeijiApp({super.key});

  final theme = MaterialTheme(TextTheme());

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "En Seiji",
      darkTheme: theme.dark(),
      home: SplashScreen(),
    );
  }
}
