import 'package:flutter/material.dart';
import 'package:flutter_1/controller.dart/radion_controller.dart';
import 'package:provider/provider.dart';

class DisplayPage extends StatelessWidget {
  const DisplayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            Text(Provider.of<RadioController>(context, listen: false).radioval),
      ),
    );
  }
}
