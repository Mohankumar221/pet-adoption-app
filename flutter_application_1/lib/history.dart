import 'package:flutter/material.dart';
import 'data.dart'; // Import your data model

class HistoryPage extends StatelessWidget {
  final List<Animal> adoptedPets;

  const HistoryPage({super.key, required this.adoptedPets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adoption History'),
      ),
      body: ListView.builder(
        itemCount: adoptedPets.length,
        itemBuilder: (context, index) {
          final pet = adoptedPets[index];
          return Card(

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0), // Circular border radius
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25, // Radius of the circular part
                backgroundImage: AssetImage(pet.imageUrl),
              ),
              title: Text(pet.name),
              subtitle: Text('Adopted on: ${pet.date_timear}'),
              onTap: () {
                // Handle onTap event
              },
            ),
          );
        },
      ),
    );
  }
}
