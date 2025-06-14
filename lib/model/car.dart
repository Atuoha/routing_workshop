class Car {
  final String id;
  final String name;
  final String imageUrl;
  final String description;

  Car({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.description,
  });
}

final List<Car> carList = [
  Car(
    id: '1',
    name: 'Tesla Model S',
    imageUrl: 'https://hips.hearstapps.com/hmg-prod/images/2025-tesla-model-s-2-672d42e16475f.jpg?crop=0.503xw:0.502xh;0.262xw,0.289xh&resize=980:*',
    description: 'Electric car with autopilot features.',
  ),
  Car(
    id: '2',
    name: 'BMW M4',
    imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/2021_BMW_M4_Competition_Automatic_3.0_Front.jpg/1200px-2021_BMW_M4_Competition_Automatic_3.0_Front.jpg',
    description: 'Sporty and powerful coupe.',
  ),
  Car(
    id: '3',
    name: 'Ford Mustang',
    imageUrl: 'https://images.prismic.io/carwow/c2d2e740-99e2-4faf-8cfa-b5a75c5037c0_ford-mustang-2024-lhd-front34static.jpg?auto=format&cs=tinysrgb&fit=max&q=60',
    description: 'Iconic American muscle car.',
  ),
];