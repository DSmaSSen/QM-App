import 'package:flutter/material.dart';

class ReportsPage extends StatelessWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rapporter'),
      ),
      body: Column(
        children: [
          const Text('En liste af rapporter'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/report_page');
            },
            child: const Text('Åben denne rapport'),
          ),
        ],
      ),
    );
  }
}
