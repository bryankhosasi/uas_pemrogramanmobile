//Created by: Bryan Khosasi - 243303611403

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final String nama;

  const LoginPage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Chat"),
      ),
      body: Center(
        child: Text(
          "Halo $nama",
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}