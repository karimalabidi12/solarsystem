import 'package:flutter/material.dart';
import 'package:systeme_solaire/custom_drawer.dart';
import 'package:systeme_solaire/screens/planet_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النظام الشمسي', style: TextStyle(fontSize: 20)),
        centerTitle: true,
      ),
      drawer: CustomDrawer(), // Inclure la barre de menu ici
      body: Stack(
        children: [
          Image.asset(
            'assets/img/sys.gif',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'النظام الشمسي هو الاسم الذي يُطلق على نظامنا الكوكبي، الذي يتكون من الشمس وكل الأجرام السماوية التي ترافقها وتدور حولها. '
                  'يشمل ذلك الكواكب، أقمارها، الكويكبات، المذنبات (إلى جانب الغازات والغبار، التي تسمى المواد بين الكوكبية، والتي لا تكون مرئية إلا في ظروف خاصة مثل الضوء الزُهَري)... '
                  'عمر النظام الشمسي يُقدّر بحوالي 4.5 مليار سنة.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlanetScreen()),
                  );
                },
                child: Text('اكتشف الكواكب', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
