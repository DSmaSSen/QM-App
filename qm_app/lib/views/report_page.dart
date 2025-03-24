import 'package:flutter/material.dart';

class ReportPage extends StatelessWidget {
  const ReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Se denne rapport'),
      ),
      body: Center(
        child: const Text('Jeg er en rapport'),
      ),
    );
  }
}
