class Expense{
  final int id;
  final String expense_title;
  final String type; 
  // type can be added, spent, invested, crypto++, crypto--
  final double amount;
  final String your_emotion;
  final DateTime date;

  Expense({this.id=0, this.expense_title='', this.type='spent', this.amount=0, this.your_emotion='', required this.date});

}