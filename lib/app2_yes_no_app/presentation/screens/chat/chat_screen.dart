import 'package:flutter/material.dart';
import 'package:hellow_world_app/app2_yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:hellow_world_app/app2_yes_no_app/presentation/widgets/chat/yours_message_bubble.dart';
import 'package:hellow_world_app/app2_yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/c/c5/Pedro_Pascal_by_Gage_Skidmore.jpg'),
          ),
        ),
        title: const Text('Pedro'),
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return (index % 2 ==0 )
                          ? const YoursMessageBubble()
                          : const MyMessageBubble();
                    })),

            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
