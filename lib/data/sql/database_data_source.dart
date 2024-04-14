import 'package:expense_report/domain/models/income.dart';

import 'db/expense_report_database.dart';

class DatabaseDataSource {
  ExpenseReportDatabase db;

  DatabaseDataSource(this.db);

  List<Income> getIncomes() {
    final incomeDbs = db.getIncomes();
    var elements = <Income>[];
    for (final income in incomeDbs) {
      elements.add(income.toIncome());
    }
    return elements;
  }

  void synchronizedDataFromFirebase(List<Income> incomes) {
    // todo: synchronizedDataFromFirebase
  }
}
