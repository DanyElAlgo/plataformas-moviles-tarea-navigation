import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mensajes de bienvenida')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Elige un tipo de mensaje',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Hola!');
              },
              child: const Text('Hola!'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Bienvenido');
              },
              child: const Text('Bienvenido'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'Buenas!');
              },
              child: const Text('Buenas!'),
            ),
          ],
        ),
      ),
    );
  }
}
