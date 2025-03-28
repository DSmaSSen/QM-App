import 'package:qm_app/data/repositories/report_repository.dart';

class ReportsViewModel {
  final _reportRepo = ReportRepository();

  void add() {
    // test data
    _reportRepo.add(Report(id: 1, title: 'Report 1'));
    _reportRepo.add(Report(id: 2, title: 'Report 2'));
    _reportRepo.add(Report(id: 3, title: 'Report 3'));
    _reportRepo.add(Report(id: 4, title: 'Report 4'));
    _reportRepo.add(Report(id: 5, title: 'Report 5'));
  }

  List<Report> getAll() => _reportRepo.getAll();
}
