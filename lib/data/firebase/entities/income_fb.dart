import '../../../domain/models/income.dart';

class IncomeFB {
  String id;
  String detail;
  String amount;
  String date;
  String categoryId;
  String personId;

  IncomeFB(this.id, this.detail, this.amount, this.date, this.categoryId,
      this.personId);

  Income toIncome() {
    return Income(id, detail, amount, date, categoryId, personId);
  }
}
