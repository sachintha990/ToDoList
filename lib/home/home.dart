import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/nav_bar.dart';
import 'package:todo_list/home/add_task.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,       
        leading: IconButton(
            icon: Icon(Icons.sort, color: Colors.white),
            onPressed: () {
              // Add your onPressed code here!
            },
          ),
          title: const Align(
            alignment: Alignment.center,
            child: Text(
              'Index',
              style: TextStyle( color:  Colors.white),
            ),
          ),

          actions: const <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/home/dp_images.png"),
              ),
            ),
          ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Image.asset("assets/home/home_image.png"),
            const SizedBox(height: 30,),
            const Text("What do you want to do today? ",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),),
            const SizedBox(height: 20,),

            const Text("Tap + to add your tasks",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),),
        ],),

        
      ),
      bottomNavigationBar: NavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AddTask()),);
            },
            child: Icon(Icons.add,size: 40,color: Colors.white,),
            backgroundColor: Color(0xff8687E7),
            shape: CircleBorder(),
            elevation: 10, 
          ),
        )

    );
  }
}