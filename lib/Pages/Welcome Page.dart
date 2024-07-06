import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  final List<Map<String, String>> cardData = [
    {'title': 'Healthily', 'imageUrl': 'https://via.placeholder.com/150'},
    {'title': 'Disease Detection', 'imageUrl': 'https://via.placeholder.com/150'},
    {'title': 'Growth Monitoring', 'imageUrl': 'https://via.placeholder.com/150'},
    {'title': 'Settings', 'imageUrl': 'https://via.placeholder.com/150'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16.0),
      children: List.generate(cardData.length, (index) {
        return CustomCard(
          title: cardData[index]['title']!,
          imageUrl: cardData[index]['imageUrl']!,
        );
      }),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CustomCard({super.key, required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
