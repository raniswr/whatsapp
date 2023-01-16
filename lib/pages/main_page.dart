import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp/pages/profile_pages.dart';
import 'package:whatsapp/pages/widgets/chat_section.dart';
import 'package:whatsapp/pages/widgets/panggilan_section.dart';
import 'package:whatsapp/pages/widgets/status_section.dart';
import 'package:whatsapp/providers/pop_up_menu_provider.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour, itemFive }

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> listTabBar = const [
    // CameraApp(),
    StatusSection(),
    ChatSection(),
    StatusSection(),
    PanggilanSection(),
  ];

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = const TabBar(
      indicatorColor: Colors.white,
      tabs: <Widget>[
        Tab(
          child: Image(
            image: AssetImage("assets/camera.png"),
            width: 25,
          ),
        ),
        Tab(text: "CHAT"),
        Tab(text: "STATUS"),
        Tab(text: "PANGGILAN"),
      ],
    );
    return DefaultTabController(
      length: 4,
      child: Consumer<PopUpProvider>(builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              PopupMenuButton<Menu>(
                  onSelected: (Menu item) {
                    provider.onSelectedMenu(item, context);
                  },
                  itemBuilder: (BuildContext context) => provider.listPopupMenu),
            ],
            backgroundColor: const Color.fromARGB(255, 54, 116, 56),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(child: myTabBar),
            ),
          ),
          body: TabBarView(children: listTabBar),
        );
      }),
    );
  }
}
