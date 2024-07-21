import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 25,
        )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BottomNavigationBar(
          selectedItemColor:Colors.deepOrange,
          unselectedItemColor:  Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Network',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: 'Post',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
              ),  
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Events',
              ),          
          ],
    
        // currentIndex: currentIndex,
        // onTap: onTap,
          ),
      ),
    
    
    );
  }
}