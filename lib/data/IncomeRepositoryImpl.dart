import 'package:expense_report/data/shared.dart';
import 'package:expense_report/domain/models/income.dart';
import 'package:expense_report/domain/repository/income_repository.dart';

import 'firebase/firebase_data_source.dart';
import 'sql/database_data_source.dart';

class IncomeRepositoryImpl extends IncomeRepository {
  final SharedPref _sharedPref;
  final DatabaseDataSource _databaseDataSource;
  final FirebaseDataSource _firebaseDataSource;

  IncomeRepositoryImpl(
      this._sharedPref, this._databaseDataSource, this._firebaseDataSource);

  @override
  List<Income> getIncomes() {
    if (_sharedPref.isSynchronizedData()) {
      return _databaseDataSource.getIncomes();
    } else {
      final incomes = _firebaseDataSource.getIncomes();
      synchronizedDataFromFirebase(incomes);
      return incomes;
    }
  }

  void synchronizedDataFromFirebase(List<Income> incomes) {
    _databaseDataSource.synchronizedDataFromFirebase(incomes);
  }
}
