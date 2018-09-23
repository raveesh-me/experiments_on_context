import 'package:flutter/material.dart';
import 'package:experiments_on_context/home_screen.dart';

main() {
  runApp(ExperimentsApp());
}

class ExperimentsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Experiments on Context",
      home: HomeScreen(),
    );
  }
}
