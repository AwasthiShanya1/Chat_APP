import 'package:chat_app/chatmessage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController textController = TextEditingController();

  final List<ChatMessage> message = <ChatMessage>[];

  void handleSubmitted(String text) {
    textController.clear();
    ChatMessage msg = new ChatMessage(
      text: text,
    );
    setState(() {
      message.insert(0, msg);
    });
  }

  Widget textComposerWidget() {
    return IconTheme(
      data: IconThemeData(
        color: Colors.deepPurple,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 8,
        ),
        child: Row(
          children: [
            Flexible(
              child: TextField(
                controller: textController,
                onSubmitted: handleSubmitted,
                decoration: InputDecoration.collapsed(hintText: 'hintText'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 4.0,
              ),
              child: IconButton(
                  onPressed: () => handleSubmitted(textController.text),
                  icon: Icon(Icons.send)),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => message[index],
          itemCount: message.length,
        )),
        SizedBox(
          height: 1.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: textComposerWidget(),
        ),
      ],
    );
  }
}
