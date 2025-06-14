import 'package:flutter/material.dart';

import '../model/car.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Available Cars')),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];
          return Card(
            margin: EdgeInsets.all(8),
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(car.imageUrl),
              ),
              title: Text(car.name, style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(car.description, maxLines: 2, overflow: TextOverflow.ellipsis),

              // Navigates to the DetailsScreen and passes the selected car as an argument
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: car,
                );
              },
            ),
          );
        },
      ),

      // Floating action button to navigate to the ProfileScreen
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/profile'),
        tooltip: 'Go to Profile',
        child: Icon(Icons.person),
      ),
    );
  }
}