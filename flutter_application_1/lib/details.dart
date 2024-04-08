import 'package:flutter/material.dart';
import 'data.dart';
import 'package:intl/intl.dart';


class DetailsPage extends StatelessWidget {
  final Animal animal;
  final Function(Animal, bool) updateAdoptionStatus;

  const DetailsPage({
    super.key,
    required this.animal,
    required this.updateAdoptionStatus,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(animal.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              animal.imageUrl,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16.0),
            Text(
              animal.name,
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Age: ${animal.age} years',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 8.0),
            Text(
              'Price: \$${animal.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (!animal.isAdopted) {
                  // Update adoption status
                  updateAdoptionStatus(animal, true);
                  // Show adoption status dialog
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Adoption Status'),
                      content: Text('${animal.name} is adopted!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            animal.date_timear = DateFormat('yyyy-MM-dd HH:mm').format(DateTime.now());

                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                } else {
                  // Show dialog if already adopted
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Adoption Status'),
                      content: Text('${animal.name} is already adopted!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(

                backgroundColor: Colors.blue,
              ),
              child: Text(animal.isAdopted ? 'Already Adopted' : 'Adopt Me'),
            ),

          ],
        ),
      ),
    );
  }
}
