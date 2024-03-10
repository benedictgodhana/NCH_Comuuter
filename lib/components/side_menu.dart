import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_signup/theme/theme.dart';
import '../components/transaction_history_page.dart'; // Adjust the path based on your directory structure
import '../components/revenue_analytics.dart'; // Adjust the path based on your directory structure
import '../components/bus_routes_management.dart'; // Adjust the path based on your directory structure
import '../components/passenger_management.dart'; // Adjust the path based on your directory structure
import '../components/notifications.dart'; // Adjust the path based on your directory structure
import '../screens/dashboard_screen.dart'; // Adjust the path based on your directory structure







class Sidemenu extends StatefulWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  State<Sidemenu> createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 308,
        height: double.infinity,
        color: lightColorScheme.primary, // Set the body color here
        child: SafeArea(
          child: Column(
            children: [
              const Infocard(
                name: "Benedict",
                profession: "Admin",
              ),
              Divider(color: Colors.white24,
              height:1
              ),
              ListTile(
                title: const Text(
                  'Dashboard',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                leading: Icon(Icons.dashboard, color: Colors.white), // Set icon color to white
                onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DashboardScreen(),
                      ),
                    );
                  },
              ),
              ListTile(
                title: const Text(
                  'Transaction History',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                leading: Icon(
                  Icons.history,
                  color: Colors.white, // Set icon color to white
                ),
                                // Add this to your Sidemenu class
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => TransactionHistoryPage(),
                      ),
                    );
                  },

              ),
              ListTile(
                title: const Text(
                  'Revenue Analytics',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                leading: Icon(
                  Icons.analytics,
                  color: Colors.white, // Set icon color to white
                ),
                onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RevenueAnalyticsPage(),
                      ),
                    );
                  },
              ),
              ListTile(
                title: const Text(
                  'Bus Routes Management',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                leading: Icon(
                  Icons.map,
                  color: Colors.white, // Set icon color to white
                ),
                onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => BusRoutesManagementPage(),
                      ),
                    );
                  },
              ),
              ListTile(
                title: const Text(
                  'Passenger Management',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                leading: Icon(
                  Icons.people,
                  color: Colors.white, // Set icon color to white
                ),
                onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PassengerManagementPage(),
                      ),
                    );
                  },
              ),
              ListTile(
                title: const Text(
                  'Notifications',
                  style: TextStyle(color: Colors.white), // Set text color to white
                ),
                leading: Icon(
                  Icons.notifications,
                  color: Colors.white, // Set icon color to white
                ),
                onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => NotificationsPage(),
                      ),
                    );
                  },
              ),
              // Use the correct case for the class name
              // Add more widgets as needed
            ],
          ),
        ),
      ),
    );
  }
}

class Infocard extends StatelessWidget {
  const Infocard({
    Key? key,
    required this.name,
    required this.profession,
  }) : super(key: key); // Add the key parameter
  final String name, profession;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(CupertinoIcons.person, color: Colors.white), // Set icon color to white
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(profession, style: TextStyle(color: Colors.white)),
    );
  }
}
