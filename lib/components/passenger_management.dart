import 'package:flutter/material.dart';
import 'side_menu.dart'; // Adjust the path based on your directory structure
import 'package:login_signup/theme/theme.dart';

class PassengerManagementPage extends StatelessWidget {
  const PassengerManagementPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Builder(
          builder: (BuildContext context) {
            return AppBar(
              title: const Text('Passenger Management'),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Passenger Management Page',
              style: TextStyle(fontSize: 24.0),
            ),
            // Add your specific content related to passenger management here
          ],
        ),
      ),
    );
  }
}
