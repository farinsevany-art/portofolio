import 'package:flutter/material.dart';

import '../widgets/gradient_header.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() =>
      _SettingsPageState();
}

class _SettingsPageState
    extends State<SettingsPage> {

  bool notification = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          const GradientHeader(
            title: 'Pengaturan',
            subtitle: 'Atur preferensi aplikasi',
          ),

          const SizedBox(height: 15),

          _setting(
            icon: Icons.notifications,
            title: 'Notifikasi',
            subtitle:
                'Aktifkan pemberitahuan aplikasi',

            trailing: Switch(
              value: notification,

              onChanged: (value) {
                setState(() {
                  notification = value;
                });
              },
            ),
          ),

          _setting(
            icon: Icons.dark_mode,
            title: 'Mode Gelap',
            subtitle:
                'Gunakan tampilan gelap',

            trailing: Switch(
              value: darkMode,

              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ),

          _setting(
            icon: Icons.language,
            title: 'Bahasa',
            subtitle: 'Indonesia',

            trailing: const Icon(
              Icons.chevron_right,
            ),

            onTap: () {
              _languageDialog(context);
            },
          ),

          _setting(
            icon: Icons.info_outline,
            title: 'Tentang Aplikasi',
            subtitle: 'Versi 1.0.0',

            trailing: const Icon(
              Icons.chevron_right,
            ),

            onTap: () {
              showAboutDialog(
                context: context,
                applicationName: 'Joslearn',
                applicationVersion: '1.0.0',
              );
            },
          ),

          _setting(
            icon: Icons.logout,
            title: 'Keluar',
            subtitle: 'Keluar dari aplikasi',

            trailing: const Icon(
              Icons.chevron_right,
            ),

            onTap: () {
              _logoutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _setting({
    required IconData icon,
    required String title,
    required String subtitle,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 5,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color(0xFFE2E5EC),
        ),
      ),

      child: ListTile(
        onTap: onTap,

        leading: CircleAvatar(
          backgroundColor:
              const Color(0xFFEFF1FF),

          child: Icon(
            icon,
            color: const Color(0xFF4E5BC5),
          ),
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),

        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),

        trailing: trailing,
      ),
    );
  }

  void _languageDialog(
    BuildContext context,
  ) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Pilih Bahasa',
          ),

          content: Column(
            mainAxisSize: MainAxisSize.min,

            children: [

              ListTile(
                leading: const Icon(
                  Icons.check,
                ),

                title: const Text(
                  'Indonesia',
                ),

                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                title: const Text(
                  'English',
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

  void _logoutDialog(
    BuildContext context,
  ) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Keluar',
          ),

          content: const Text(
            'Apakah kamu yakin ingin keluar?',
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

                ScaffoldMessenger.of(context)
                    .showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Tombol keluar diklik',
                    ),
                  ),
                );
              },

              child: const Text(
                'Keluar',
              ),
            ),
          ],
        );
      },
    );
  }
}