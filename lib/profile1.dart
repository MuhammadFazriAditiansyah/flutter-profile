import 'package:flutter/material.dart';

class Profile1Page extends StatelessWidget {
  const Profile1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0C5D8F),
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "Profile Muhammad Fazri Aditiansyah",
            style: TextStyle(color: Colors.white),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Foto Profil
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/profile1.jpg"),
              ),
              const SizedBox(height: 10),

              // Nama
              const Text(
                "Muhammad Fazri Aditiansyah",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),

              // Username + Lokasi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("@faditya_10", style: TextStyle(color: Colors.grey)),
                  SizedBox(width: 8),
                  Icon(Icons.location_on, size: 16, color: Colors.grey),
                  SizedBox(width: 4),
                  Text("Bogor", style: TextStyle(color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 5),

              const Text(
                "FRONT-END DEVELOPER",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),

              // TabBar
              const TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.blue,
                tabs: [
                  Tab(text: "Data Pribadi"),
                  Tab(text: "Keahlian"),
                  Tab(text: "Cita-Cita"),
                ],
              ),
              const SizedBox(height: 20),

              // Card BIO
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  color: const Color(0xFF0C5D8F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "BIO\nSaya adalah seorang Front-End Developer yang berfokus pada "
                      "pembuatan tampilan website yang interaktif "
                      "serta responsif. Memiliki semangat untuk terus mempelajari "
                      "framework terbaru dan meningkatkan pengalaman pengguna (UI/UX).",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Card Sosial Media
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Card(
                  color: const Color(0xFF0C5D8F),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "SOSIAL MEDIA",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(Icons.linked_camera, color: Colors.white),
                            Icon(Icons.work, color: Colors.white),
                            Icon(Icons.facebook, color: Colors.white),
                            Icon(Icons.camera_alt, color: Colors.white),
                            Icon(Icons.alternate_email, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
