import 'package:flutter/material.dart';

class ReportView extends StatelessWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Se! En rapport!'),
      ),
      body: Center(
        child: const Text('Hej! Jeg er en rapport :)'),
      ),
    );
  }
}
