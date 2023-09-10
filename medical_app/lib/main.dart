import 'package:flutter/material.dart';
import 'package:medical_app/screens/welcome_screen.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      //darkTheme: ThemeData.dark(),
      //themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}
