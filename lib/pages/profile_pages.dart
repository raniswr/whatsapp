import 'package:flutter/material.dart';
import 'package:whatsapp/style.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text("Profil"),
        backgroundColor: Color.fromARGB(255, 54, 116, 56),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                padding: EdgeInsets.all(8),
                color: AppStyles.bgColor,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Center(
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    ListTile(
                                      leading: new Icon(Icons.camera_alt_rounded),
                                      title: new Text('Camera'),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      leading: new Icon(Icons.photo_size_select_actual_rounded),
                                      title: new Text('Galeri'),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                );
                              });
                        },
                        child: Container(
                          width: 150,
                          height: 150,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey),
                          child: Icon(
                            Icons.person,
                            size: 130,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color.fromARGB(255, 54, 116, 56)),
                        child: Icon(
                          Icons.camera_alt_sharp,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.grey),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama",
                    style: AppStyles.styleTextBody14(),
                  ),
                  Text(
                    "Rani",
                    style: AppStyles.styleTextBody16().copyWith(color: Colors.black),
                  ),
                ],
              ),
              subtitle: Text(
                'ini bukan nama pengguna atau PIN anda.',
                style: AppStyles.styleTextBody12(),
              ),
              trailing: const Icon(Icons.edit),
              iconColor: Color.fromARGB(255, 54, 116, 56),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.grey),
              title: Text(
                "Info",
                style: AppStyles.styleTextBody14(),
              ),
              subtitle: Text(
                'Hai saya menggunakan WhatsApp',
                style: AppStyles.styleTextBody16().copyWith(color: Colors.black),
              ),
              trailing: const Icon(Icons.edit),
              iconColor: Color.fromARGB(255, 54, 116, 56),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.grey),
              title: Text(
                "Telepone",
                style: AppStyles.styleTextBody14(),
              ),
              subtitle: Text(
                '+62 838-9256-5994',
                style: AppStyles.styleTextBody16().copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
