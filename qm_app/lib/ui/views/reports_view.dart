import 'package:flutter/material.dart';
import 'package:qm_app/ui/view_models/reports_view_model.dart';

class ReportsView extends StatelessWidget {
  const ReportsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rapporter'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              const Text('Lad os sige at dette er en liste af rapporter:'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/report');
                },
                child: const Text('Jeg er en rapport... Åben mig!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
