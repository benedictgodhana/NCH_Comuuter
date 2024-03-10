import 'package:flutter/material.dart';
import 'side_menu.dart'; // Adjust the path based on your directory structure
import 'package:login_signup/theme/theme.dart';

class RevenueAnalyticsPage extends StatelessWidget {
  const RevenueAnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
        child: Builder(
          builder: (BuildContext context) {
            return AppBar(
              title: const Text('Revenue Analytics'),
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
      body: Center(
        // ... (rest of the code)
      ),
    );
  }
}
