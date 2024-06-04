import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:scholar_chat/models/message.dart';

const styleSomebody = BubbleStyle(
  nip: BubbleNip.leftCenter,
  color: Colors.grey,
  borderColor: Colors.grey,
  borderWidth: 1,
  elevation: 4,
  margin: BubbleEdges.only(
    top: 20,
    right: 50,
  ),
  alignment: Alignment.topLeft,
);

const styleMe = BubbleStyle(
  nip: BubbleNip.rightCenter,
  color: Color.fromARGB(255, 50, 107, 3),
  borderColor: Color.fromARGB(255, 50, 107, 3),
  borderWidth: 1,
  elevation: 4,
  margin: BubbleEdges.only(top: 20, left: 50, right: 10),
  alignment: Alignment.topRight,
);

class BubbleChatRight extends StatelessWidget {
  const BubbleChatRight({super.key, required this.messages});
  final Message messages;

  @override
  Widget build(BuildContext context) {
    return Bubble(
      style: styleMe,
      child: Text(
        messages.messages,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}

class BubbleChatLeft extends StatelessWidget {
  const BubbleChatLeft({super.key, required this.messages});
  final Message messages;
  @override
  Widget build(BuildContext context) {
    return Bubble(
      style: styleSomebody,
      child: Text(
        messages.messages,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
      ),
    );
  }
}

class ChatTime extends StatelessWidget {
  const ChatTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Bubble(
      alignment: Alignment.center,
      color: const Color.fromARGB(255, 212, 234, 244),
      borderColor: Colors.black,
      borderWidth: 2,
      margin: const BubbleEdges.only(top: 8),
      child: const Text(
        'TODAY',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 50.0,
          ),
          SizedBox(height: 10.0),
          Text(
            'Error Occurred!',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            'Something went wrong, Please try again later!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
