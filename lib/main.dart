import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reham Alshiekh Saado | Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff0d0e15),
        primaryColor: const Color(0xff8a2be2),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xff8a2be2),
          secondary: Color(0xff00f5d4),
          surface: Color(0xff181a26),
        ),
      ),
      home: const HomePage(),
    );
  }
}