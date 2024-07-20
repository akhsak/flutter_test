import 'package:flutter/material.dart';
import 'package:flutter_1/controller.dart/radion_controller.dart';
import 'package:flutter_1/view/display.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final radio = Provider.of<RadioController>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text('select'),
      ),
      body: Consumer(
        builder: (context, value, child) => Column(
          children: [
            RadioListTile(
                value: 'male',
                title: Text('male'),
                groupValue: 'male',
                onChanged: (val) {
                  radio.change(val);
                }),
            RadioListTile(
                value: 'female',
                groupValue: 'female',
                onChanged: (val) {
                  radio.change(val);
                }),
            RadioListTile(
                value: 'others',
                groupValue: 'others',
                onChanged: (val) {
                  radio.change(val);
                }),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DisplayPage()));
                },
                child: Text('add'))
          ],
        ),
      ),
    );
  }
}
