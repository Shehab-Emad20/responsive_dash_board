class TransactionModel {
  final String title, data, amount;
  final bool isWithdrawal;

  const TransactionModel(
      {required this.title,
      required this.data,
      required this.amount,
      required this.isWithdrawal});
}
