import 'package:flutter/material.dart';

import '../widgets/gradient_header.dart';
import '../widgets/project_card.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          GradientHeader(
            title: 'My Projects',
            subtitle: 'Karya dan project yang saya kerjakan',

            action: IconButton(
              onPressed: () {
                _showSearch(context);
              },

              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 15),

          const ProjectCard(
            title: 'K-Rent',
            category: 'Flutter',
            year: '2026',
            description:
                'Konsep aplikasi kasir dan manajemen stok '
                'untuk penyewaan baju.',

            image: 'assets/images/project2.png',
          ),

          const ProjectCard(
            title: 'Sistem Inventaris Toko',
            category: 'Web',
            year: '2025',
            description:
                'Sistem informasi inventaris untuk mengelola '
                'stok barang.',
            image: 'assets/images/project1.jpeg',
          ),

          const ProjectCard(
            title: 'K-Rent',
            category: 'UI/UX',
            year: '2026',
            description:
                'Konsep aplikasi kasir dan manajemen stok '
                'untuk penyewaan baju.',

            image: 'assets/images/project3.jpeg',
          ),

          const SizedBox(height: 25),
        ],
      ),
    );
  }

  void _showSearch(BuildContext context) {
    showModalBottomSheet(
      context: context,

      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [

              const Padding(
                padding: EdgeInsets.all(15),

                child: Text(
                  'Cari Project',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              ListTile(
                leading: const Icon(
                  Icons.apps,
                ),

                title: const Text(
                  'Semua Project',
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.phone_android,
                ),

                title: const Text(
                  'Mobile',
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(
                  Icons.web,
                ),

                title: const Text(
                  'Website',
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}