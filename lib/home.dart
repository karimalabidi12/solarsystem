import 'package:flutter/material.dart';
import 'package:systeme_solaire/planet_detail.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> planets = [
    {
      'name': 'الشمس',
      'image': 'assets/img/sun.png',
      'description': 'نجم يقع في مركز النظام الشمسي.'
    },
    {
      'name': 'عطارد',
      'image': 'assets/img/mercury.png',
      'description': 'أقرب كوكب إلى الشمس.'
    },
    {
      'name': 'الزهرة',
      'image': 'assets/img/venus.png',
      'description': 'أحر كوكب في المجموعة الشمسية.'
    },
    {
      'name': 'الأرض',
      'image': 'assets/img/earth.png',
      'description': 'الكوكب الذي نعيش عليه.'
    },
    {
      'name': 'القمر',
      'image': 'assets/img/lune.png',
      'description': 'القمر هو القمر الطبيعي للأرض.'
    },
    {
      'name': 'المريخ',
      'image': 'assets/img/mars.png',
      'description': 'الكوكب الأحمر.'
    },
    {
      'name': 'المشتري',
      'image': 'assets/img/jupiter.png',
      'description': 'أكبر كوكب في النظام الشمسي.'
    },
    {
      'name': 'زحل',
      'image': 'assets/img/saturn.png',
      'description': 'الكوكب ذو الحلقات.'
    },
    {
      'name': 'أورانوس',
      'image': 'assets/img/uranus.png',
      'description': 'الكوكب المائل.'
    },
    {
      'name': 'نبتون',
      'image': 'assets/img/neptune.png',
      'description': 'الكوكب الأزرق.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('النظام الشمسي')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('النظام الشمسي',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(
              title: Text('الصفحة الرئيسية'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
            ),
            ListTile(
              title: Text('عن التطبيق'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
            ListTile(
              title: Text('إعدادات'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: planets.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(10),
                leading: Image.asset(planets[index]['image']!, width: 150),
                title:
                    Text(planets[index]['name']!, textAlign: TextAlign.center),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PlanetDetailScreen(planet: planets[index]),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

// Page "About"
class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('عن التطبيق')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'هذا التطبيق يعرض معلومات عن الكواكب في النظام الشمسي.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// Page "Settings"
class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('إعدادات')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'هذه صفحة الإعدادات.',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
