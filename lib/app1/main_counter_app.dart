import 'package:flutter/material.dart';
import 'package:hellow_world_app/app1/presentation/screens/counter/counter_functions_screen.dart';

class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
        home: const CounterFunctionsScreen());
  }
}
