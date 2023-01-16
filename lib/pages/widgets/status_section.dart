import 'package:flutter/material.dart';
import 'package:whatsapp/pages/widgets/video_section.dart';
import 'package:whatsapp/style.dart';

class StatusSection extends StatefulWidget {
  const StatusSection({super.key});

  @override
  State<StatusSection> createState() => _StatusSectionState();
}

class _StatusSectionState extends State<StatusSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          leading: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color.fromARGB(255, 54, 116, 56)),
                child: Icon(
                  Icons.add,
                  size: 10,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          title: Text(
            "Status Saya",
            style: AppStyles.styleTextBody16().copyWith(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'Ketuk untuk menambahkan Pembaharuan',
            style: AppStyles.styleTextBody12(),
          ),
        ),
        SizedBox(height: 15),
        Text(
          '        Pembaruan terkini',
          style: AppStyles.styleTextBody12(),
        ),
        SizedBox(height: 10),
        ListView.builder(
          itemCount: 5,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: ((context) {
                  return VideoSection();
                })));
              },
              leading: CircleAvatar(
                backgroundImage: const AssetImage('assets/siapa.jpg'),
                backgroundColor: AppStyles.bgColor,
                radius: 29,
              ),
              title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("   Adi", style: AppStyles.styleTextBody16().copyWith(fontWeight: FontWeight.w600)),
                Text("    Hari ini 15.50",
                    style: AppStyles.styleTextBody14().copyWith(
                      fontSize: 10,
                    )),
                SizedBox(height: 25),
              ]),
            );
          },
        ),
      ],
    );
  }
}
