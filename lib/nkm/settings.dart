import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isDarkMode = false;
  bool isManageAccountExpanded = false;
  bool isHelpExpanded = false;
  String selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black87 : Colors.white,
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: isDarkMode ? Colors.grey[900] : Colors.lightBlueAccent,
      ),
      body: ListView(
        children: [
          // Language Selector
          ListTile(
            leading: Icon(Icons.language, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('Language', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            trailing: DropdownButton<String>(
              value: selectedLanguage,
              dropdownColor: isDarkMode ? Colors.grey[800] : Colors.white,
              items: [
                DropdownMenuItem(value: 'English', child: Text('English')),
                DropdownMenuItem(value: 'French', child: Text('French')),
              ],
              onChanged: (value) {
                setState(() {
                  selectedLanguage = value!;
                });
              },
            ),
          ),

          // Dark Mode Toggle
          SwitchListTile(
            secondary: Icon(Icons.dark_mode, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('Dark Mode', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            value: isDarkMode,
            onChanged: (value) {
              setState(() {
                isDarkMode = value;
              });
            },
          ),

          // Manage Account (Expandable)
          ExpansionTile(
            leading: Icon(Icons.person, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('Manage Account', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            children: [
              ListTile(
                title: Text('Change Password', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {},
              ),
              ListTile(
                title: Text('Privacy Settings', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {},
              ),
              ListTile(
                title: Text('Delete Account', style: TextStyle(color: Colors.red)),
                onTap: () {},
              ),
            ],
          ),

          // Help & Feedback (Expandable)
          ExpansionTile(
            leading: Icon(Icons.help, color: isDarkMode ? Colors.white : Colors.black),
            title: Text('Help & Feedback', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
            children: [
              ListTile(
                title: Text('FAQ', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {},
              ),
              ListTile(
                title: Text('Contact Support', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {},
              ),
              ListTile(
                title: Text('Send Feedback', style: TextStyle(color: isDarkMode ? Colors.white : Colors.black)),
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
