import 'package:flutter/material.dart';
import 'package:bugsnag_flutter/bugsnag_flutter.dart';

Future<void> main() async {
  await bugsnag.start(apiKey: 'a4b3d56a9c5ef2e02ff38cfa70ffc07a');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () => throw Exception('Intentional Exception Message'),
            child: const Text('Throw Exception'),
          ),
        ),
      ),
    );
  }
}
