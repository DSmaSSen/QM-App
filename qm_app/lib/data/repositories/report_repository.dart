import 'package:qm_app/data/models/report.dart';
export 'package:qm_app/data/models/report.dart';

class ReportRepository {
  // fields
  final _reports = List<Report>.empty();

  //methods
  void add(Report report) => _reports.add(report);
  Report getById(int id) => _reports.firstWhere((r) => r.id == id);
  List<Report> getAll() => _reports;
}
