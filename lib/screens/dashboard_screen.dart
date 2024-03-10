import 'package:flutter/material.dart';
import 'package:login_signup/theme/theme.dart';
import '../components/side_menu.dart'; // Adjust the path based on your directory structure

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Builder(
          builder: (BuildContext context) {
            return AppBar(
              title: const Text('Dashboard'),
              backgroundColor: lightColorScheme.primary,
              actions: [
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
                // Share icon at the end of the app bar
                IconButton(
                  icon: const Icon(Icons.share),
                  onPressed: () {
                    // Implement the action for sharing
                  },
                ),
              ],
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Sidemenu(), // Use the Sidemenu widget here
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome, Admin!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            // Placeholder for amount received
            Text(
              'Amount Received: \$5000', // Replace with actual amount received
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 20.0),
            // Placeholder for graph
            Container(
              height: 200.0, // Adjust height as needed
              child: Placeholder(), // Replace with your graph widget
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('View Reports'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Manage Routes'),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Settings'),
            ),
            // Add more buttons or widgets as needed
          ],
        ),
      ),
    );
  }
}
