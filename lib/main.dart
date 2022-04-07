import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_list/screens/home_screen.dart';
import 'package:tasks_list/screens/profile_screen.dart';
import 'package:tasks_list/screens/reports_screen.dart';
import 'package:tasks_list/services/list_of_demands.dart';

import 'constants.dart';

void main() {
  runApp(DeliveryManApp());
}

class DeliveryManApp extends StatelessWidget {
  const DeliveryManApp({Key? key}) : super(key: key);

  static const String _title = 'Delivery Man App';
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListOfDemands>(
      create: (context) => ListOfDemands(),
      child: MaterialApp(
        title: _title,
        home: const RootPage(),
        theme: ThemeData(primaryColor: KMainColor),
      ),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ReportsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: KSelectedItemColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
