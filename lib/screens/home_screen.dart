import 'package:flutter/material.dart';
import 'package:wimtorq_app/models/pages.dart';

class HomeScreen extends StatelessWidget {
  static MaterialPage page() {
    return MaterialPage(
      name: WimtorqPages.homePath,
      key: ValueKey(WimtorqPages.homePath),
      child: const HomeScreen()
      );
  }
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wimtorq"),
      ),
      
    );
  }
}
