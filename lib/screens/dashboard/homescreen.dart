import 'package:data_driven_fitness_app/screens/dashboard/dashboard.dart';
import 'package:data_driven_fitness_app/screens/dashboard/navbar/navbar_constants.dart';
import 'package:flutter/material.dart';

/// Dashboard user sees open app startup
class HomeScreen extends StatefulWidget {
  static final DashboardTabItem tab = DashboardTabItem.HOME;
  @override
  _HomeScreenState createState() => _HomeScreenState();

  static IconButton getTabButton(
      BuildContext context, DashboardTabItem currentTab, Function onPress) {
    Color color =
        (currentTab == tab) ? Theme.of(context).accentColor : Colors.black;
    return IconButton(
      icon: Icon(
        Icons.home,
        color: color,
        size: NavbarConstants.size,
      ),
      onPressed: () {
        onPress(tab);
      },
    );
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}
