import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("saeed amin"),
        backgroundColor: Colors.blue[800],
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              tileColor: Colors.blue[800],
              textColor: Colors.blue,
              leading: Icon(Icons.home, color: Colors.blueGrey),
              title: Text(
                'الصفحة الرئيسية',
                style: TextStyle(color: Colors.cyan),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ExpansionTile(
              title: Text(
                "settings",
                style: TextStyle(color: Colors.purpleAccent),
              ),
              children: [
                ListTile(
                  tileColor: Colors.teal[400],
                  leading: Icon(Icons.notification_add, color: Colors.black),
                  title: Text(
                    'notification',
                    style: TextStyle(color: Colors.tealAccent),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  tileColor: Colors.amberAccent[100],
                  leading: Icon(Icons.privacy_tip, color: Colors.amber[300]),
                  title: Text(
                    'الخصوصية ',
                    style: TextStyle(color: Colors.amber[700]),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  tileColor: Colors.blue[900],
                  leading: Icon(Icons.language, color: Colors.blue),
                  title: Text(
                    'اللغة ',
                    style: TextStyle(color: Colors.blue[200]),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  tileColor: Colors.teal[300],
                  leading: Icon(Icons.delete, color: Colors.teal),
                  title: Text(
                    'حذف الحساب ',
                    style: TextStyle(color: Colors.blueGrey[600]),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            ListTile(
              tileColor: Colors.cyan[100],
              leading: Icon(Icons.logout, color: Colors.tealAccent),
              title: Text('logout', style: TextStyle(color: Colors.teal[400])),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: SvgPicture.asset('assets/svg/img.svg'),
      )
    );
  }
}
