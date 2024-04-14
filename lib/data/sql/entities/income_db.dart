import 'package:expense_report/domain/models/income.dart';

class IncomeDb {
  String id;
  String detail;
  String amount;
  String date;
  String categoryId;
  String personId;

  IncomeDb(this.id, this.detail, this.amount, this.date, this.categoryId,
      this.personId);

  Map<String, Object?> toMap() {
    return {
      'id': id,
      'detail': detail,
      'amount': amount,
      'date': date,
      'category_id': categoryId,
      'person_id': personId,
    };
  }

  Income toIncome() {
    return Income(id, detail, amount, date, categoryId, personId);
  }
}
