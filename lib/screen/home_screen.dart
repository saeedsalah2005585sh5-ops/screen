import 'package:flutter/material.dart';
import 'package:untitled4/screen/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> pages = [
    Home(),

    Text("data"),
    Text("search"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
          onTap: (index){
          setState(() {
            selectedIndex=index;
          });
          print("index is $index");
          },

          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "person"),
            BottomNavigationBarItem(icon:Icon(Icons.notification_add),label: "Notifications"),
          ],
      ),
    );
  }
}
