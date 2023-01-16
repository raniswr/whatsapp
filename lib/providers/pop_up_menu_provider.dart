import 'package:flutter/material.dart';
import 'package:whatsapp/pages/main_page.dart';
import 'package:whatsapp/pages/profile_pages.dart';
import 'package:whatsapp/pages/setelan_page.dart';

class PopUpProvider extends ChangeNotifier {
  var listPopupMenu = <PopupMenuEntry<Menu>>[
    const PopupMenuItem<Menu>(
      value: Menu.itemOne,
      child: Text('Grup baru'),
    ),
    const PopupMenuItem<Menu>(
      value: Menu.itemTwo,
      child: Text('Siaran Baru'),
    ),
    const PopupMenuItem<Menu>(
      value: Menu.itemThree,
      child: Text('Perangkat tertaut'),
    ),
    const PopupMenuItem<Menu>(
      value: Menu.itemFour,
      child: Text('Pesan Berbintang'),
    ),
    const PopupMenuItem<Menu>(
      value: Menu.itemFive,
      child: Text('Setelan'),
    ),
  ];

  void onSelectedMenu(Menu menu, BuildContext context) {
    print(menu.index);
    switch (menu.index) {
      case 0:
        // Navigator.push(context, route)

        break;
      case 1:
        // Navigator.push(context, route)
        break;
      case 2:
        // Navigator.push(context, route)
        break;
      case 3:
        // Navigator.push(context, route)

        break;
      case 4:
        // Navigator.push(context, route)
        Navigator.push(context, MaterialPageRoute(builder: ((context) {
          return SetelanPage();
        })));
        break;

      default:
    }
  }
}
