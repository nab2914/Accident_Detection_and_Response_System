import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User"),
        backgroundColor: Colors.lightBlueAccent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            UserOption(icon: Icons.person, text: 'Personal Details'),
            UserOption(icon: Icons.directions_car, text: 'Vehicle Details'),
            UserOption(icon: Icons.security, text: 'Insurance Details'),
            UserOption(icon: Icons.local_hospital, text: 'Medical Details'),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                // Handle emergency contacts
              },
              icon: Icon(Icons.contact_phone),
              label: Text('Emergency Contacts'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserOption extends StatelessWidget {
  final IconData icon;
  final String text;

  const UserOption({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, size: 30),
        title: Text(text, style: TextStyle(fontSize: 18)),
        onTap: () {
          // Handle option click
        },
      ),
    );
  }
}
