import 'package:flutter/material.dart';
import 'package:qm_app/views/reports_page.dart';
import 'package:qm_app/views/report_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QM App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
        ),
      ),
      home: const ReportsPage(),
      routes: {
        '/reports_page': (context) => ReportsPage(),
        '/report_page': (context) => ReportPage()
      },
    );
  }
}
