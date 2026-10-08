import 'package:flutter/material.dart';

import '../widgets/gradient_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          GradientHeader(
            title: 'Profil',
            subtitle: 'Informasi tentang saya',

            action: IconButton(
              onPressed: () {
                _showEdit(context);
              },

              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 25),

          // FOTO
          Container(
            width: 110,
            height: 110,

            decoration: BoxDecoration(
              shape: BoxShape.circle,

              border: Border.all(
                color: const Color(0xFF4E57D8),
                width: 3,
              ),
            ),

            child: ClipOval(
              child: Image.asset(
                'assets/images/profile.jpeg',
                fit: BoxFit.cover,

                errorBuilder:
                    (context, error, stackTrace) {
                  return const Icon(
                    Icons.person,
                    size: 60,
                    color: Color(0xFF4E57D8),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Farin Sevany Kasih',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 4),

          const Text(
            'Mahasiswa Teknik Informatika',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),

          const SizedBox(height: 25),

          _infoCard(
            Icons.badge,
            'Identitas',
            [
              'NIM :E41251508',
              'Program Studi : Teknik Informatika',
              'Politeknik Negeri Jember',
            ],
          ),

          _infoCard(
            Icons.school,
            'Pendidikan',
            [
              'Teknik Informatika',
              'Fokus Pengembangan Aplikasi',
            ],
          ),

          _infoCard(
            Icons.star,
            'Keahlian',
            [
              'Flutter • Laravel • React',
              'Python • UI/UX • Web Development',
            ],
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }

  Widget _infoCard(
    IconData icon,
    String title,
    List<String> items,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 5,
      ),

      padding: const EdgeInsets.all(15),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFE2E5EC),
        ),
      ),

      child: Row(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Icon(
            icon,
            color: const Color(0xFF4E59C5),
          ),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 7),

                ...items.map(
                  (item) => Padding(
                    padding:
                        const EdgeInsets.only(
                      bottom: 4,
                    ),

                    child: Text(
                      item,
                      style:
                          const TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showEdit(BuildContext context) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Edit Profil',
          ),

          content: const TextField(
            decoration: InputDecoration(
              labelText: 'Farin Sevany Kasih',
              border: OutlineInputBorder(),
            ),
          ),

          actions: [

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text(
                'Batal',
              ),
            ),

            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text(
                'Simpan',
              ),
            ),
          ],
        );
      },
    );
  }
}