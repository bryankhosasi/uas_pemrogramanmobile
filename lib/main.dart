//Created by: Bryan Khosasi - 243303611403

import 'package:flutter/material.dart';
import 'chat_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  // DATA CHAT (NAMA + PESAN BERBEDA)
  final List<Map<String, String>> data = const [
    {
      "nama": "Nardo Tedrick",
      "pesan": "Bro besok ikut tournament billiard yuk",
    },
    {
      "nama": "Paldeta",
      "pesan": "Selamat ulang tahun bryan 🎉🎉🎉",
    },
    {
      "nama": "Bryan Subolo",
      "pesan": "Malam mau main Valorant gak?",
    },
    {
      "nama": "Frederico",
      "pesan": "Males ah powerbox pengen tidur aja ngantuk bangett",
    },
    {
      "nama": "Om Pantun",
      "pesan": "Lagi ngajarin anak om Justine naik sepeda nih..",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // HEADER
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: Colors.blue,
            child: const Text(
              "Aplikasi Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          // LIST CHAT
          Expanded(
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ChatItem(
                  nama: data[index]["nama"]!,
                  pesan: data[index]["pesan"]!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}