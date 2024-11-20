import 'package:flutter/material.dart';
import 'package:systeme_solaire/screens/home_screen.dart';
import 'package:systeme_solaire/screens/planet_screen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'القائمة الرئيسية',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('الصفحة الرئيسية'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.public),
            title: Text('الكواكب'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => PlanetScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('حول التطبيق'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('حول التطبيق'),
                  content: Text(
                    'هذا التطبيق يستعرض النظام الشمسي ويعرض معلومات حول الكواكب.',
                    textAlign: TextAlign.right,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('إغلاق'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
