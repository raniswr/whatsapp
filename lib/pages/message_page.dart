import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:whatsapp/style.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 54, 116, 56),
          title: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                child: const Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text("Adi"),
                  Text(
                    'online',
                    style: TextStyle(fontSize: 13),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.videocam),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.phone),
              onPressed: () {},
            ),
          ]),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 100,
                shrinkWrap: true,
                primary: true,
                itemBuilder: (context, index) {
                  if (index.isEven) {
                    return Column(
                      children: [
                        Bubble(
                          alignment: Alignment.center,
                          color: const Color.fromRGBO(212, 234, 244, 1.0),
                          child: Text('TODAY', textAlign: TextAlign.center, style: TextStyle(fontSize: 11.0)),
                        ),
                        Bubble(
                          margin: BubbleEdges.only(top: 10),
                          alignment: Alignment.topRight,
                          nip: BubbleNip.rightTop,
                          color: Color.fromRGBO(225, 255, 199, 1.0),
                          child: Text('Hello, World!', textAlign: TextAlign.right),
                        ),
                      ],
                    );
                  } else {
                    return Bubble(
                      margin: BubbleEdges.only(top: 10),
                      alignment: Alignment.topLeft,
                      nip: BubbleNip.leftTop,
                      child: Text('Hi, developer!'),
                    );
                  }
                }),
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: AppStyles.inputDecoration("Ketik Pesan"),
                ),
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color.fromARGB(255, 97, 182, 100)),
                child: Icon(
                  Icons.mic,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
