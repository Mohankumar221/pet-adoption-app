import 'package:flutter/material.dart';
// Import your data file
import 'home.dart'; // Import your home page widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal Adoption',
      themeMode: ThemeMode.system,
      // Define light and dark themes if needed
      theme: ThemeData.light(), // Define your light theme
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
