import 'package:flutter/material.dart';

class SidebarLayout extends StatelessWidget {
  final Widget content;
  final Widget sidebar;

  const SidebarLayout({
    Key? key,
    required this.content,
    required this.sidebar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          Container(
            width: 250, // Set the width of the sidebar as needed
            child: sidebar,
          ),
          // Content
          Expanded(
            child: content,
          ),
        ],
      ),
    );
  }
}
