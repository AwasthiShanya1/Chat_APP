import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  const ChatMessage({super.key, required this.text});

  final String name = "Shanya";

  final String text;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right:16,),
            child: CircleAvatar(
              child: Text(name[0]),
            ),
          ),
          Column(
            children: [
              Text(name, style: Theme.of(context).textTheme.headlineMedium),
              Container(
                margin: EdgeInsets.only(top:5.0),
                child: Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}