import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Bounceable"),
      ),
      body: ListView(
        children: [
          Bounceable(
            onTap: () {},
            child: const Text("data"),
          ),
        ],
      ),
    );
  }
}
