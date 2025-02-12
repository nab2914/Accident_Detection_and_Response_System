import 'package:flutter/material.dart';

class AccidentReportPage extends StatefulWidget {
  @override
  _AccidentReportPageState createState() => _AccidentReportPageState();
}

class _AccidentReportPageState extends State<AccidentReportPage> {
  String? _severity;
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report an Accident'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select severity',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: _severity,
              hint: Text('Select severity'),
              onChanged: (String? newValue) {
                setState(() {
                  _severity = newValue;
                });
              },
              items: <String>['Low', 'Medium', 'High']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            Text(
              'Briefly describe what happened',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter description',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Upload Photo',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement photo upload functionality
              },
              child: Text('Upload Photo'),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Clear form
                    _descriptionController.clear();
                    setState(() {
                      _severity = null;
                    });
                  },
                  child: Text('Clear Form'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Submit report
                    if (_severity != null && _descriptionController.text.isNotEmpty) {
                      // Implement submit functionality
                      print('Report Submitted');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please fill all fields')),
                      );
                    }
                  },
                  child: Text('Submit Report'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}