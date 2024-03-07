import 'package:flutter/material.dart';
import 'chatscreen.dart';
import 'chatmessage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat App"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: ChatScreen(),
    );
  }
}