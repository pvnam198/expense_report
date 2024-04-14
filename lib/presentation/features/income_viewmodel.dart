import '../../domain/models/income.dart';
import '../../domain/repository/income_repository.dart';

class IncomeViewModel {
  IncomeRepository incomeRepository;

  IncomeViewModel(this.incomeRepository);

  List<Income> getIncomes() {
    return incomeRepository.getIncomes();
  }
}
