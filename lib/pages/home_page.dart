import 'package:flutter/material.dart';

import '../widgets/gradient_header.dart';
import '../widgets/skill_chip.dart';
import '../widgets/contact_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          // =========================
          // HEADER
          // =========================
          GradientHeader(
            title: 'My Portfolio',
            subtitle: 'Build • Learn • Create',

            action: IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Menu membuka'),
                  ),
                );
              },

              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ),

          // =========================
          // JARAK SETELAH PROFILE
          // =========================
          Transform.translate(
            offset: const Offset(0, 20),

            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 18,
              ),

              padding: const EdgeInsets.all(15),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.10),
                    blurRadius: 15,
                    offset: const Offset(0, 7),
                  ),
                ],
              ),

              child: Row(
                children: [

                  Container(
                    width: 82,
                    height: 82,

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
                          return Container(
                            color: const Color(0xFF4655D8),

                            child: const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 45,
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  const SizedBox(width: 13),

                  // =========================
                  // BIODATA
                  // =========================
                  const Expanded(
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        Text(
                          'Farin Sevany Kasih',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          'Mahasiswa Teknik Informatika',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          'NIM : 123456789',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          'Program Studi : Teknik Informatika',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),

                        SizedBox(height: 3),

                        Text(
                          'Politeknik Negeri Jember',
                          style: TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // =========================
          // JARAK SETELAH PROFILE
          // =========================
          const SizedBox(height: 35),

          // =========================
          // TENTANG SAYA
          // =========================
          const Padding(
            padding: EdgeInsets.fromLTRB(
              18,
              0,
              18,
              10,
            ),

            child: Align(
              alignment: Alignment.centerLeft,

              child: Row(
                children: [

                  Icon(
                    Icons.person,
                    size: 20,
                    color: Color(0xFF4354BA),
                  ),

                  SizedBox(width: 7),

                  Text(
                    'Tentang Saya',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // =========================
          // CARD TENTANG SAYA
          // =========================
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 18,
            ),

            padding: const EdgeInsets.all(15),

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),

              border: Border.all(
                color: const Color(0xFFE2E5EC),
              ),
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                const Text(
                  'Saya adalah mahasiswa Teknik Informatika '
                  'yang memiliki ketertarikan di bidang '
                  'pengembangan aplikasi, desain UI/UX, '
                  'serta teknologi web dan mobile. Saya '
                  'senang belajar hal baru dan '
                  'mengembangkan berbagai project.',

                  style: TextStyle(
                    fontSize: 11,
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 12),

                // =========================
                // SKILL
                // =========================
                Wrap(
                  spacing: 6,
                  runSpacing: 6,

                  children: const [

                    SkillChip(
                      icon: Icons.flutter_dash,
                      title: 'Flutter',
                    ),

                    SkillChip(
                      icon: Icons.web,
                      title: 'Laravel',
                    ),

                    SkillChip(
                      icon: Icons.code,
                      title: 'React',
                    ),

                    SkillChip(
                      icon: Icons.data_object,
                      title: 'Python',
                    ),

                    SkillChip(
                      icon: Icons.design_services,
                      title: 'UI/UX',
                    ),

                    SkillChip(
                      icon: Icons.language,
                      title: 'Web Development',
                    ),
                  ],
                ),
              ],
            ),
          ),

          // =========================
          // KONTAK & SOSIAL MEDIA
          // =========================
          const Padding(
            padding: EdgeInsets.fromLTRB(
              18,
              20,
              18,
              8,
            ),

            child: Align(
              alignment: Alignment.centerLeft,

              child: Row(
                children: [

                  Icon(
                    Icons.share,
                    size: 20,
                    color: Color(0xFF4354BA),
                  ),

                  SizedBox(width: 7),

                  Text(
                    'Kontak & Sosial Media',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          ContactTile(
            icon: Icons.email,
            title: 'Email',
            value: 'farinsevany@gmail.com',

            onTap: () {
              _message(
                context,
                'Email diklik',
              );
            },
          ),

          ContactTile(
            icon: Icons.phone,
            title: 'WhatsApp',
            value: '+62 82142172484',

            onTap: () {
              _message(
                context,
                'WhatsApp diklik',
              );
            },
          ),

          // =========================
          // GITHUB
          // =========================
          ContactTile(
            icon: Icons.code,
            title: 'GitHub',
            value: 'farinsevany',

            onTap: () {
              _message(
                context,
                'GitHub diklik',
              );
            },
          ),

          ContactTile(
            icon: Icons.business,
            title: 'LinkedIn',
            value: 'linkedin.com/in/username',

            onTap: () {
              _message(
                context,
                'LinkedIn diklik',
              );
            },
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  static void _message(
    BuildContext context,
    String text,
  ) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
      ),
    );
  }
}