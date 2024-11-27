import 'package:flutter/material.dart';
import 'friends.dart';
import 'history.dart';
import 'todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navbarIndex = 0;
  final List<Widget> pages = [
    const FriendsPage(),
    const HistoryPage(),
    const TodoPage()
  ];

  final List<NavigationDestination> destinations = [
    NavigationDestination(icon: Icon(Icons.add_task), label: "TODOs"),
    NavigationDestination(icon: Icon(Icons.calendar_month), label: "Calendar"),
    NavigationDestination(icon: Icon(Icons.history), label: "History"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[navbarIndex],
      bottomNavigationBar: SafeArea(
        child: NavigationBar(
          destinations: destinations,
          selectedIndex: navbarIndex,
          onDestinationSelected: (int index) {
            setState(() {
              navbarIndex = index;
            });
          },
        ),
      ),
    );
  }
}
