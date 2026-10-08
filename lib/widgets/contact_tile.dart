import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  final VoidCallback onTap;

  const ContactTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 4,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
        border: Border.all(
          color: const Color(0xFFE3E6EF),
        ),
      ),

      child: ListTile(
        onTap: onTap,

        leading: CircleAvatar(
          radius: 18,
          backgroundColor: const Color(0xFFEFF1FF),
          child: Icon(
            icon,
            size: 18,
            color: const Color(0xFF4E5BC5),
          ),
        ),

        title: Text(
          title,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),

        subtitle: Text(
          value,
          style: const TextStyle(
            fontSize: 10,
          ),
        ),

        trailing: const Icon(
          Icons.chevron_right,
          size: 19,
        ),
      ),
    );
  }
}