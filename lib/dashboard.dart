import 'package:flutter/material.dart';
import 'profile1.dart';
import 'profile2.dart';
import 'profile3.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Bagian Header
          Container(
            padding: const EdgeInsets.symmetric(vertical: 25),
            color: const Color(0xFF0C5D8F),
            child: const Center(
              child: Text(
                "KELOMPOK 3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Daftar Anggota
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                MemberCard(
                  name: "Adit",
                  role: "Back-End Developer",
                  imagePath: "assets/images/profile1.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Profile1Page()),
                    );
                  },
                ),
                const SizedBox(height: 20),
                MemberCard(
                  name: "Safa Fadillah",
                  role: "Front-End Developer",
                  imagePath: "assets/images/profile2.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Profile2Page()),
                    );
                  },
                ),
                const SizedBox(height: 20),
                MemberCard(
                  name: "Nadia",
                  role: "UI/UX Designer",
                  imagePath: "assets/images/profile3.jpg",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Profile3Page()),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// Widget Card Anggota
class MemberCard extends StatelessWidget {
  final String name;
  final String role; // tambahan untuk keahlian
  final String imagePath;
  final VoidCallback onTap;

  const MemberCard({
    super.key,
    required this.name,
    required this.role,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // aksi ketika diklik
      borderRadius: BorderRadius.circular(15),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: const Color(0xFF0C5D8F),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundImage: AssetImage(imagePath),
              ),
              const SizedBox(width: 16),

              // Nama + Keahlian
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    role,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
