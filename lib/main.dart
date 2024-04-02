import 'package:flutter/material.dart';
import 'src/widgets/app_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raffashe',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PortfolioRaffashe(),
      debugShowCheckedModeBanner: false,
    );
  }
}
