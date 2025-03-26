import 'package:flutter/material.dart';

import 'package:qm_app/theme_builder.dart';
import 'package:qm_app/views/report_page.dart';
import 'package:qm_app/views/reports_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBuilder = ThemeBuilder(seedColor: Colors.blueGrey);

    return MaterialApp(
      // hide "debug" banner from app
      debugShowCheckedModeBanner: false,
      // title of the app e.g. as displayed in the app-switcher view
      title: 'QM App',
      // theme settings
      theme: themeBuilder.build(Brightness.light),
      darkTheme: themeBuilder.build(Brightness.dark),
      themeMode: ThemeMode.light,
      // default view and navigation details
      home: const ReportsPage(),
      routes: {
        '/report': (context) => ReportPage(),
        '/reports': (context) => ReportsPage(),
      },
    );
  }
}
