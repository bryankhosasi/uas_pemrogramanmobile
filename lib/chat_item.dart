//Created by: Bryan Khosasi - 243303611403

import 'package:flutter/material.dart';
import 'login_page.dart';

class ChatItem extends StatelessWidget {
  final String nama;
  final String pesan;

  // TIDAK pakai const (supaya Map aman)
  ChatItem({
    super.key,
    required this.nama,
    required this.pesan,
  });

  // MAP FOTO PROFIL
  final Map<String, String> fotoProfil = {
    "Nardo Tedrick": "image/nardo_tedrick.jpg",
    "Paldeta": "image/paldeta.jpg",
    "Bryan Subolo": "image/bryan_subolo.jpg",
    "Frederico": "image/frederico.jpg",
    "Om Pantun": "image/om_pantun.jpg",
  };

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(nama: nama),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.lightBlue[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            // FOTO PROFIL
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(
                fotoProfil[nama] ?? "image/profile.png",
              ),
            ),

            const SizedBox(width: 12),

            // NAMA + PESAN
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Icon(Icons.check, size: 16, color: Colors.black54),
                      const SizedBox(width: 4),
                      Text(
                        pesan, // 🔥 PESAN BERBEDA
                        style: const TextStyle(color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Text(
              "Februari",
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}