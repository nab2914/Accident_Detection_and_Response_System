import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
            trailing: DropdownButton<String>(
              value: 'English',
              items: [
                DropdownMenuItem(value: 'English', child: Text('English')),
                DropdownMenuItem(value: 'French', child: Text('French')),
              ],
              onChanged: (value) {},
            ),
          ),
          SwitchListTile(
            secondary: Icon(Icons.dark_mode),
            title: Text('Dark Mode'),
            value: false,
            onChanged: (value) {},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Manage Account'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text('Help & Feedback'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
