import 'package:flutter/material.dart';
import 'package:flutter_2/controller/icon_controller.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<IconController>(
        builder: (context, value, child) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (value.icons != null)
                Icon(
                  value.icons,
                  size: 100,
                ),
              IconButton(
                onPressed: () {
                  value.iconschange(Icons.abc);
                },
                icon: Icon(
                  Icons.abc,
                  size: 50,
                ),
              ),
              IconButton(
                  onPressed: () {
                    value.iconschange(Icons.home);
                  },
                  icon: Icon(
                    Icons.home,
                    size: 50,
                  )),
              IconButton(
                  onPressed: () {
                    value.iconschange(Icons.favorite);
                  },
                  icon: Icon(
                    Icons.favorite,
                    size: 50,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
