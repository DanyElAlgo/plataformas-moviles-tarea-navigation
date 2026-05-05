import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/routes.dart';
import 'package:flutter_application_1/features/accounts/domain/presentation/widgets/item_info.widget.dart';

class MyAccount extends StatelessWidget {
  static String path = '/account';
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)?.settings.arguments;
    if (routeArgs == null || routeArgs is! AccountDetailsArgs) {
      return Scaffold(body: Center(child: Text('No account data provided')));
    }

    final account = (routeArgs).account;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Mi cuenta',
              style: TextStyle(fontFamily: 'Mario', fontSize: 60),
            ),
            Image.asset('assets/images.jfif'),
            Text('Titular: ${account.name}'),
            Text('Saldo: ${account.currentBalance}Bs'),
            ItemInfo(icon: Icons.location_city, text: account.address),
            ItemInfo(icon: Icons.phone, text: account.phoneNumber),
            Text('Edad: ${account.age}'),
            Text('Banco: ${account.bank}'),
            Text('Número de cuenta: ${account.accountNumber}'),
            // Text('ID: ${info['id'] ?? '0'}'),
            Text("Tarjetas asociadas:"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(account.cardNumber)],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Volver"),
            ),
          ],
        ),
      ),
    );
  }
}
