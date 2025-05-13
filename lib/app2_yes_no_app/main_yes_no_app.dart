import 'package:flutter/material.dart';

class MyYesNoApp extends StatelessWidget {
  const MyYesNoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yes No App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: FilledButton.tonal(
                onPressed: () {},
                child: const Text('Click me')
            ),
          ),
        ),
      ),
    );
  }
}
