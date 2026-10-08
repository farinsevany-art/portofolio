import 'package:flutter/material.dart';
import '../pages/project_detail_page.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String category;
  final String year;
  final String description;
  final String image;

  const ProjectCard({
    super.key,
    required this.title,
    required this.category,
    required this.year,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
        18,
        5,
        18,
        12,
      ),

      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(17),
        border: Border.all(
          color: const Color(0xFFE2E5ED),
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13),

            child: Image.asset(
              image,
              height: 155,
              width: double.infinity,
              fit: BoxFit.cover,

              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 155,
                  width: double.infinity,
                  color: const Color(0xFF4352D8),
                  child: const Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 60,
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 5,
                ),

                decoration: BoxDecoration(
                  color: const Color(0xFFEFF1FF),
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Text(
                  category,
                  style: const TextStyle(
                    fontSize: 9,
                    color: Color(0xFF4C58C6),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 5),

          Text(
            'Tahun: $year',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 10,
            ),
          ),

          const SizedBox(height: 7),

          Text(
            description,
            style: const TextStyle(
              fontSize: 11,
              height: 1.4,
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            width: double.infinity,

            child: FilledButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProjectDetailPage(
                      title: title,
                      category: category,
                      year: year,
                      description: description,
                      image: image,
                    ),
                  ),
                );
              },

              icon: const Icon(
                Icons.arrow_forward,
                size: 16,
              ),

              label: const Text(
                'Lihat Detail',
              ),
            ),
          ),
        ],
      ),
    );
  }
}