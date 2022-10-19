import 'package:flutter/material.dart';

import './home_screen/views/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Mano Vikram",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}