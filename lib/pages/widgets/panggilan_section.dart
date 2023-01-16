import 'package:flutter/material.dart';
import 'package:whatsapp/style.dart';

class PanggilanSection extends StatefulWidget {
  const PanggilanSection({super.key});

  @override
  State<PanggilanSection> createState() => _PanggilanSectionState();
}

class _PanggilanSectionState extends State<PanggilanSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          itemCount: 5,
          primary: false,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                child: const Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "Adi",
                style: AppStyles.styleTextBody16().copyWith(fontWeight: FontWeight.w600),
              ),
              subtitle: Row(
                children: [
                  const Image(
                    image: AssetImage("assets/arrowm.png"),
                    width: 13,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Hari ini 15.25',
                    style: AppStyles.styleTextBody14(),
                  ),
                ],
              ),
              trailing: const Icon(Icons.phone),
              iconColor: Color.fromARGB(255, 97, 182, 100),
              onTap: () {},
            );
          },
        ),
      ],
    );
  }
}
