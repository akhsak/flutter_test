import 'package:flutter/material.dart';
import 'package:flutter_2/controller/icon_controller.dart';
import 'package:flutter_2/view/homePage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => IconController(),
      child: MaterialApp(home: Homepage()),
    );
  }
}
