import 'package:flutter/material.dart';
import 'package:flutter_application_1/accounts.page.dart';
import 'package:flutter_application_1/commons/extens.dart';
import 'package:flutter_application_1/features/accounts/domain/entities/account.entity.dart';
import 'package:flutter_application_1/welcome.page.dart';
import 'package:flutter_application_1/profile.page.dart';
import 'package:flutter_application_1/config/routes.dart';

class HomePage extends StatefulWidget {
  static String path = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  var showBalance = false;
  double balance = 21.00;
  bool isLoading = false;
  String? welcomeMessage;

  Future<double> getBalance() async {
    await Future.delayed(Duration(microseconds: 1));
    return 64.00;
  }

  Future<void> openAccountWithNamedRoute() async {
    final account = AccountEntity(
      id: '1',
      name: 'Dany',
      accountNumber: '1234567890',
      cardNumber: '1111222233334444',
      currentBalance: balance,
      phoneNumber: '+59123456789',
      age: 20,
      address: 'example address',
      bank: 'fyuagdshbjfdbshfakyebvjsd',
    );

    // Use typed args for safer navigation
    context.go(
      MyAccount.path,
      arguments: AccountDetailsArgs(account),
    );
  }

  Future<void> openWidgetPage() async {
    await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyWidgetTest()),
    );
  }

  Future<void> openSettingsPage() async {
    final message = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const MyWidget()),
    );

    if (!mounted) {
      return;
    } // validación de página cargada

    setState(() {
      welcomeMessage = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation practice')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: isLoading
                  ? const CircularProgressIndicator()
                  : Text(showBalance ? '$balance Bs' : '***** Bs'),
            ),
            ElevatedButton(
              onPressed: () {
                showBalance = !showBalance;
                setState(() {});
              },
              child: const Text('Mostrar saldo'),
            ),
            ElevatedButton(
              onPressed: () async {
                isLoading = true;
                setState(() {});
                final newBalance = await getBalance();
                balance = newBalance;
                isLoading = false;
                setState(() {});
              },
              child: const Text('Actualizar saldo'),
            ),
            const SizedBox(height: 24),
            const Text(
              '',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: openAccountWithNamedRoute,
              child: const Text('Mi cuenta'),
            ),
            ElevatedButton(
              onPressed: openWidgetPage,
              child: const Text('Perfil'),
            ),
            ElevatedButton(
              onPressed: openSettingsPage,
              child: const Text('Configuración'),
            ),
            const SizedBox(height: 16),
            Text(
              welcomeMessage == null ? '' : '$welcomeMessage',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
