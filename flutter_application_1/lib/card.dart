import 'package:flutter/material.dart';
import 'data.dart';

class AnimalCard extends StatelessWidget {
  final Animal animal;
  final bool isAdopted;

  const AnimalCard({
    super.key,
    required this.animal,
    required this.isAdopted,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: (isAdopted) ? Colors.black : Colors.white,
      margin: const EdgeInsets.all(12.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    animal.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              animal.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
