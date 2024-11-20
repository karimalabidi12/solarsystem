import 'package:flutter/material.dart';
import 'package:systeme_solaire/custom_drawer.dart';
import 'package:systeme_solaire/models/planet.dart';
import '../data/planet_data.dart';

class PlanetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الكواكب', style: TextStyle(fontSize: 20)),
      ),
      drawer: CustomDrawer(), // Inclure la barre de menu ici

      body: ListView.builder(
        itemCount: planets.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              planets[index].name,
              style: TextStyle(fontSize: 18),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        PlanetDetailScreen(planet: planets[index]),
                  ),
                );
              },
              child: SizedBox(
                width: 70, // Largeur de l'image
                height: 70, // Hauteur de l'image
                child: Image.asset(planets[index].imagePath, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlanetDetailScreen extends StatelessWidget {
  final Planet planet;

  const PlanetDetailScreen({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              planet.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(planet.name),
                    content: Text(planet.description),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('إغلاق'),
                      ),
                    ],
                  ),
                );
              },
              child: Image.asset(
                planet.imagePath,
                height: 500,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
