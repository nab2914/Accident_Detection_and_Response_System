import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton.icon(
            icon: Icon(Icons.person),
            label: Text('Personal Details'),
            onPressed: () {
              // Handle personal details
            },
          ),
          SizedBox(height: 20),
          ElevatedButton.icon(
            icon: Icon(Icons.directions_car),
            label: Text('Vehicle Details'),
            onPressed: () {
              // Handle vehicle details
            },
          ),
          /*SizedBox(height: 20),
          ElevatedButton.icon(
            icon: Icon(Icons.insurance),
            label: Text('Insurance Details'),
            onPressed: () {
              // Handle insurance details
            },
          ),*/
          SizedBox(height: 20),
          ElevatedButton.icon(
            icon: Icon(Icons.medical_services),
            label: Text('Medical Details'),
            onPressed: () {
              // Handle medical details
            },
          ),
        ],
      ),
    );
  }
}