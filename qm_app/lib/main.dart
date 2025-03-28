import 'package:flutter/material.dart';

import 'package:qm_app/theme_builder.dart';
import 'package:qm_app/ui/views/report_view.dart';
import 'package:qm_app/ui/views/reports_view.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  // constructor
  const App({super.key});

  // methods
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
      themeMode: ThemeMode.system,
      // default view and navigation details
      home: const ReportsView(),
      routes: {
        '/report': (context) => ReportView(),
        '/reports': (context) => ReportsView(),
      },
    );
  }
}
