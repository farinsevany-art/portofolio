import 'package:flutter/material.dart';

class ProjectDetailPage extends StatelessWidget {
  final String title;
  final String category;
  final String year;
  final String description;
  final String image;

  const ProjectDetailPage({
    super.key,
    required this.title,
    required this.category,
    required this.year,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Project',
        ),

        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },

          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),

        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,

          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(18),

              child: Image.asset(
                image,

                width: double.infinity,
                height: 210,

                fit: BoxFit.cover,

                errorBuilder:
                    (context, error, stackTrace) {
                  return Container(
                    height: 210,
                    width: double.infinity,
                    color: const Color(0xFF4D58D7),

                    child: const Icon(
                      Icons.image,
                      color: Colors.white,
                      size: 70,
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 20),

            Text(
              title,

              style: const TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [

                Chip(
                  label: Text(
                    category,
                  ),
                ),

                const SizedBox(width: 7),

                Chip(
                  label: Text(
                    year,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            const Text(
              'Deskripsi',

              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 7),

            Text(
              description,

              style: const TextStyle(
                fontSize: 13,
                height: 1.5,
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Teknologi',

              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Wrap(
              spacing: 7,
              runSpacing: 7,

              children: [

                Chip(
                  avatar: Icon(
                    Icons.flutter_dash,
                    size: 17,
                  ),
                  label: Text(
                    'Flutter',
                  ),
                ),

                Chip(
                  avatar: Icon(
                    Icons.storage,
                    size: 17,
                  ),
                  label: Text(
                    'Firebase',
                  ),
                ),

                Chip(
                  avatar: Icon(
                    Icons.location_on,
                    size: 17,
                  ),
                  label: Text(
                    'Google Maps',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,

              child: FilledButton.icon(
                onPressed: () {

                  ScaffoldMessenger.of(context)
                      .showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Demo project diklik',
                      ),
                    ),
                  );
                },

                icon: const Icon(
                  Icons.play_arrow,
                ),

                label: const Text(
                  'Lihat Demo',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}