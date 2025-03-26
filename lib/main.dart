import 'package:flutter/material.dart';

void main() {
  runApp(TimeTrackerApp());
}

class TimeTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Time Tracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Tracker")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text("Projects"),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Projects Screen (if implemented)
              },
            ),
            ListTile(
              leading: Icon(Icons.task),
              title: Text("Tasks"),
              onTap: () {
                Navigator.pop(context);
                // Navigate to Tasks Screen (if implemented)
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text("Home Screen")),
    );
  }
}
