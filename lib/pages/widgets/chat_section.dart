import 'package:flutter/material.dart';
import 'package:whatsapp/pages/message_page.dart';
import 'package:whatsapp/style.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppStyles.bgColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(height: 10),
          ListView.builder(
            itemCount: 8,
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) {
                    return MessagePage();
                  })));
                },
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text("   Adi", style: AppStyles.styleTextBody16().copyWith(fontWeight: FontWeight.w600)),
                  Text("    Smartfriend Telecom Tbk.",
                      style: AppStyles.styleTextBody14().copyWith(
                        fontSize: 10,
                      )),
                ]),
                trailing: Text(
                  "07.20",
                  style: AppStyles.styleTextBody14().copyWith(
                    fontSize: 10,
                  ),
                ),
              );
            },
          ),
          FloatingActionButton(
            backgroundColor: Color.fromARGB(255, 97, 182, 100),
            foregroundColor: Colors.white,
            onPressed: () {
              // Respond to button press
            },
            child: Icon(Icons.message),
          ),
        ],
      ),
    );
  }
}
