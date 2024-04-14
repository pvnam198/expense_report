import 'package:expense_report/domain/models/income.dart';

import 'service/firebase_service.dart';

class FirebaseDataSource {
  FirebaseService firebaseService;

  FirebaseDataSource(this.firebaseService);

  List<Income> getIncomes()  {
    final incomeFbs = firebaseService.getIncomes();
    var elements = <Income>[];
    for (final income in incomeFbs) {
      elements.add(income.toIncome());
    }
    return elements;
  }
}
