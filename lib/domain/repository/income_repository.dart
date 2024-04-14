import '../models/income.dart';

abstract class IncomeRepository {
  List<Income> getIncomes();
}
