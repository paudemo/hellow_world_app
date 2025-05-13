import 'package:flutter/material.dart';
import 'package:hellow_world_app/app2_yes_no_app/config/theme/app_theme.dart';
import 'package:hellow_world_app/app2_yes_no_app/presentation/providers/chat_provider.dart';
import 'package:hellow_world_app/app2_yes_no_app/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';

class MyYesNoApp extends StatelessWidget {
  const MyYesNoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
          title: 'Yes No App',
          debugShowCheckedModeBanner: false,
          theme: AppTheme(selectedColor: 1).theme(),
          home: const ChatScreen()),
    );
  }
}
