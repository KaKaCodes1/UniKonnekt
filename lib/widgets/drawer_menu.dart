import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class DrawerMenu extends StatelessWidget {

  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color(0xff38b6ff),
            ),

            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // Closes the drawer after tap
              },
              child: const Column(
                children: [
                   CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/me.jpg'),
                  ),
              
                  Text(
                    "Hamisi Juma",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ]
              ),
            ),

            ),

            ListTile(
              leading: const Icon(Icons.home, color:  Colors.deepOrange),
              title: const Text('Home',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context); // Closes the drawer after tap
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen())
                   );
              },
            ),

            ListTile(
              leading: const Icon(Icons.event, color:  Colors.deepOrange),
              title: const Text('Events',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context); // Closes the drawer after tap
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AllarticlesScreen(subjects: subjects, articles: articles,))
                //    );
              },
            ),

            ListTile(
              leading: const Icon(Icons.hub, color:  Colors.deepOrange),
              title: const Text('Mentorship Programme',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context); // Closes the drawer after tap
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) =>  AllsubjectsScreen(subjects: subjects, articles: articles,))
                  //  );
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.energy_savings_leaf, color:  Colors.deepOrange),
              title: const Text('Mental Health',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context); // Closes the drawer after tap
              },
            ), 

            ListTile(
              leading: const Icon(Icons.help, color:  Colors.deepOrange),
              title: const Text('Help',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context); // Closes the drawer after tap
              },
            ),

            ListTile(
              leading: const Icon(Icons.settings, color:  Colors.deepOrange),
              title: const Text('Settings',style: TextStyle(fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.pop(context); // Closes the drawer after tap
              },
            ),            
        ],
      ),
    );
  }
}