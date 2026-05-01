class AccountEntity {
  final String id;
  final String name;
  final String accountNumber;
  final String cardNumber;
  final String phoneNumber;
  final double currentBalance;
  final int age;
  final String address;
  final String bank;

  AccountEntity({
    required this.id,
    required this.name,
    required this.accountNumber,
    required this.cardNumber,
    required this.currentBalance,
    required this.age,
    required this.address,
    required this.bank,
    required this.phoneNumber,
  });
}
