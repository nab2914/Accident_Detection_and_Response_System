import 'package:flutter/material.dart';
class MonitoringPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("System Monitoring"),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Handle settings action
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Settings"),
                    actions: [
                      TextButton(
                        onPressed: () {
                           Navigator.pushNamed(context, '/settings');
                        },

                        child: Text("Close"),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Text(
                      'Active',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'System Monitoring',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle accident report
                },
                icon: Icon(Icons.report),
                label: Text('Report Accident'),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle call services
                },
                icon: Icon(Icons.call),
                label: Text('Call Services'),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle current location
                },
                icon: Icon(Icons.location_on),
                label: Text('Current Location'),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
