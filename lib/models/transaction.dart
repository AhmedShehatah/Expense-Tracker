class Transaction {
  String id, title;
  double amount;
  DateTime date;
  Transaction(
      {required this.id,
      required this.title,
      required this.date,
      required this.amount});
}
