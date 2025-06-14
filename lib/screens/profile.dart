import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String profileImage = 'https://www.shutterstock.com/image-vector/young-smiling-man-avatar-brown-600nw-2261401207.jpg';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Profile')),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(profileImage),
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text('john.doe@example.com', style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 30),

            // Button to go back to the HomeScreen
            ElevatedButton.icon(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.arrow_back),
              label: Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
