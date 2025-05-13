import 'package:flutter/cupertino.dart';
import 'package:hellow_world_app/app2_yes_no_app/domain/entities/message.dart';

import '../../config/helper/get_yes_no_answer.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController chatScrollController = ScrollController();
  final getYesNoAnser = GetYesNoAnswer();

  List<Message> messages = [
    Message(text: 'Hola', fromWho: FromWho.me),
    Message(text: 'How are u?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messages.add(newMessage);

    if (text.endsWith('?')) yoursReply();

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> yoursReply() async {
    final yourMessage = await getYesNoAnser.getAnswer();
    messages.add(yourMessage);
    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
  }
}
