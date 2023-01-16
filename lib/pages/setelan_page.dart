import 'package:flutter/material.dart';
import 'package:whatsapp/pages/profile_pages.dart';
import 'package:whatsapp/style.dart';

class SetelanPage extends StatefulWidget {
  const SetelanPage({super.key});

  @override
  State<SetelanPage> createState() => _SetelanPageState();
}

class _SetelanPageState extends State<SetelanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setelan'),
        backgroundColor: const Color.fromARGB(255, 54, 116, 56),
      ),
      body: Column(
        children: [
          ListTile(
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
              "Rani",
              style: AppStyles.styleTextBody16().copyWith(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              'Sibuk',
              style: AppStyles.styleTextBody14(),
            ),
            trailing: const Icon(Icons.qr_code),
            iconColor: Color.fromARGB(255, 97, 182, 100),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) {
                return ProfilePage();
              })));
            },
          ),
          ListTile(
            leading: const Icon(Icons.key, color: Colors.grey),
            title: Text('Akun', style: AppStyles.styleTextBody16().copyWith(color: Colors.black)),
            subtitle: Text("Privasi,keamanan,ganti nomor", style: AppStyles.styleTextBody14()),
          ),
          ListTile(
            leading: const Icon(Icons.chat, color: Colors.grey),
            title: Text('Chat', style: AppStyles.styleTextBody16().copyWith(color: Colors.black)),
            subtitle: Text(" Tema,wallpaper,riwayat chat", style: AppStyles.styleTextBody14()),
          ),
          ListTile(
            leading: const Icon(Icons.notifications, color: Colors.grey),
            title: Text('Notifikasi', style: AppStyles.styleTextBody16().copyWith(color: Colors.black)),
            subtitle: Text("Pesan, grup,&nada dering panggilan", style: AppStyles.styleTextBody14()),
          ),
          ListTile(
            leading: const Icon(Icons.data_saver_off_rounded, color: Colors.grey),
            title: Text('Penyimpanan & Data', style: AppStyles.styleTextBody16().copyWith(color: Colors.black)),
            subtitle: Text("Pengguna jaringan, nuduh otomatis", style: AppStyles.styleTextBody14()),
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_outlined, color: Colors.grey),
            title: Text('Bantuan', style: AppStyles.styleTextBody16().copyWith(color: Colors.black)),
            subtitle: Text(" Pusat bantuan,hubungi kami, kebijakan privasi", style: AppStyles.styleTextBody14()),
          ),
          ListTile(
            leading: const Icon(Icons.people, color: Colors.grey),
            title: Text('Undang Teman', style: AppStyles.styleTextBody16().copyWith(color: Colors.black)),
          ),
        ],
      ),
    );
  }
}
