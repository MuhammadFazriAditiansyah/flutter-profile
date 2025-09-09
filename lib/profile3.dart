import 'package:flutter/material.dart';

class Profile3Page extends StatelessWidget {
  const Profile3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0C5D8F),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profil Nadia",
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: const Center(
        child: Text(""),
      ),
    );
  }
}
