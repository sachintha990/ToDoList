import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
    int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff363636),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled,size: 30,),
              label: 'Index',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined,size: 30),
              label: 'Calendar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded,size: 30),
              label: 'Focus',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp,size: 30),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
        ),
      );
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: Container(
        //   height: 70,
        //   width: 70,
        //   child: FloatingActionButton(
        //     onPressed: () {
        //       // Add your onPressed code here!
        //     },
        //     child: Icon(Icons.add,size: 40,color: Colors.white,),
        //     backgroundColor: Color(0xff8687E7),
        //     shape: CircleBorder(),
        //     elevation: 10, 
        //   ),
        // );

    
  }
}