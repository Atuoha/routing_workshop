import 'package:flutter/material.dart';
import 'package:routing_demo/screens/details.dart';
import 'package:routing_demo/screens/home.dart';
import 'package:routing_demo/screens/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car List App',
      theme: ThemeData(primarySwatch: Colors.blue),

      // *** Routing logic for navigation between screens ***
      // The initial route '/' shows the HomeScreen with a list of cars.
      // '/details' route is used to show details of a selected car (receives Car object via arguments).
      // '/profile' route navigates to the user profile screen.
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/details': (context) => DetailsScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}