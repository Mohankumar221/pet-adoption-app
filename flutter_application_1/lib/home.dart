import 'package:flutter/material.dart';

import 'data.dart';
import 'details.dart';
import 'history.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void updateAdoptionStatus(Animal animal, bool isAdopted) {
    setState(() {
      animal.isAdopted = isAdopted;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView.builder(
        itemCount: animals.length,
        itemBuilder: (context, index) {
          final animal = animals[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsPage(
                    animal: animal,
                    updateAdoptionStatus: updateAdoptionStatus,
                  ),
                ),
              );
            },
            child: Card(
              color: animal.isAdopted ? Colors.grey : Colors.white,
              margin: const EdgeInsets.all(12.0),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(
                          animal.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (animal.isAdopted)
                        Positioned(
                          top: 8.0,
                          right: 8.0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 4.0,
                            ),
                            color: Colors.grey,
                            child: const Text(
                              'Adopted',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          animal.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HistoryPage(
                adoptedPets: animals.where((pet) => pet.isAdopted).toList(),
              ),
            ),
          );
        },
        child: const Icon(Icons.history),
      ),
    );
  }
}
