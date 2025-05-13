import 'package:flutter/material.dart';
import 'package:hellow_world_app/app2_yes_no_app/config/theme/app_theme.dart';
import 'package:hellow_world_app/app2_yes_no_app/presentation/screens/chat/chat_screen.dart';

class MyYesNoApp extends StatelessWidget {
  const MyYesNoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Yes No App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).theme(),
        home: const ChatScreen());
  }
}
