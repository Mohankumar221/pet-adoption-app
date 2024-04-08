class Animal {
  final String name;
  final double age;
  final double price;
  final String imageUrl;

  String date_timear ;
  bool isAdopted;

  Animal({
    required this.name,
    required this.age,
    required this.price,
    required this.imageUrl,
    required this.date_timear,
    this.isAdopted = false, // Default value is false
  });
}

List<Animal> animals = [
  Animal(
    name: 'Australian Shepherd',
    age: 9,
    price: 85.0,
    isAdopted: false,
    imageUrl: 'assets/images/Australian_Sheperd.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Beagle',
    age: 7,
    price: 25.0,
    isAdopted: false,
    imageUrl: 'assets/images/Beagle.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Boxer',
    age: 11,
    price: 275.0,
    isAdopted: false,
    imageUrl: 'assets/images/Boxer.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Bulldog',
    age: 8,
    price: 200.0,
    isAdopted: false,
    imageUrl: 'assets/images/BullDog.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'French Bulldog',
    age: 9,
    price: 55.0,
    isAdopted: false,
    imageUrl: 'assets/images/French_Bulldog.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Golden Retriever',
    age: 15,
    price: 125.0,
    isAdopted: false,
    imageUrl: 'assets/images/Golden_Retriever.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Labrador Retriever',
    age: 12,
    price: 100.0,
    isAdopted: false,
    imageUrl: 'assets/images/Labrador_Retriever.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Preator',
    age: 10,
    price: 25.0,
    isAdopted: false,
    imageUrl: 'assets/images/Preator.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Pug',
    age: 7,
    price: 75.0,
    isAdopted: false,
    imageUrl: 'assets/images/Pug.jpg',
    date_timear: '',
  ),
  Animal(
    name: 'Rottweiler',
    age: 5,
    price: 50.0,
    isAdopted: false,
    imageUrl: 'assets/images/Rottweeler.jpg',
    date_timear: '',
  ),
];
