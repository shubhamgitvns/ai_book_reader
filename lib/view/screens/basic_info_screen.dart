import 'package:flutter/material.dart';

class BasicInfoScreen extends StatelessWidget {
  const BasicInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basic Info")),

      body: const Center(child: Text("Basic Info Screen")),
    );
  }
}
