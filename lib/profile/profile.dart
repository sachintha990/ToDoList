import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';
import 'package:todo_list/constants/custom_list_tile.dart';
import 'package:todo_list/constants/nav_bar.dart';
import 'package:todo_list/home/add_task.dart';
import 'package:todo_list/home/home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:primaryColor,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            'Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        
      ),
      body: Center(
        child: ListView(
          children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children:  [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/home/dp_images.png"),
                  ),
                ),
            
                const Text("User Name",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(height: 20,),
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 154,
                      height: 58,
                      decoration: const BoxDecoration(
                        color: Color(0xff363636),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("10 Task Left",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,),
                          ),
                      ),
                    ),
            
                    Container(
                      width: 154,
                      height: 58,
                      decoration: const BoxDecoration(
                        color: Color(0xff363636),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text("5 Task Done",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,),)
                      )
                    )
                  ],
                ),
                const SizedBox(height: 30,),
            
                const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text("Setting",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
            
            
             CustomListTile(iconName: Icons.settings,title: "App Settings", onTap:() => Home()),
            const SizedBox(height: 20,),
            const Align(
              alignment:Alignment.bottomLeft,
              child: Text("Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
            ),
            
             CustomListTile(iconName: Icons.person_outline_sharp, title: "Change account name", onTap: () => Home()),
             CustomListTile(iconName: Icons.vpn_key, title: "Change account password", onTap: () => Home()),
             CustomListTile(iconName: Icons.camera_alt_outlined, title: "Change account Image", onTap: () => Home()),
            const SizedBox(height: 20,),
             const Align(
              alignment:Alignment.bottomLeft,
               child: Text("Uptodo",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
             ),
            
             CustomListTile(iconName: Icons.groups_2, title: "About US", onTap: () => Home()),
             CustomListTile(iconName: Icons.info_outline, title: "FAQ", onTap: () => Home()),
             CustomListTile(iconName: Icons.feedback_outlined, title: "Help & Feedback", onTap: () => Home()),
             CustomListTile(iconName: Icons.thumb_up, title: "Support US", onTap: () => Home()),
             
             ListTile(
            leading: const Icon(Icons.logout, color: Color.fromARGB(255, 158, 0, 0)),
            title: const Text("Log Out", style: TextStyle(color: Color.fromARGB(255, 158, 0, 0))),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()));
            }
          ),
          
              ],
            ),
          ),
          ]
        ),
      ),
      bottomNavigationBar: const NavBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const AddTask()),);
            },
            child: Icon(Icons.add,size: 40,color: Colors.white,),
            backgroundColor: const Color(0xff8687E7),
            shape: const CircleBorder(),
            elevation: 10, 
          ),
        )
    );
  }
}