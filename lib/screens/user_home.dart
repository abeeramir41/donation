import 'package:flutter/material.dart';
import 'package:donation/bnv_screens/user_account.dart';
import 'package:donation/bnv_screens/user_mainhome.dart';
import 'package:donation/bnv_screens/user_profile.dart';
import 'package:donation/bnv_screens/user_projects.dart';
class Userhome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _UserState();
  }

}
class _UserState extends State<Userhome >{
  Icon notificationicon = new Icon(Icons.notifications_active);
  int _currentindex=0;
  final tabs =[
   UserMainhome(),
   UserProjects(),
    Center(child: Text("Chat")),
    Userprofile(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: tabs[_currentindex],
      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: _currentindex,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.blue,),
            title: Text("Home ",style: TextStyle(
                color: Colors.blue

            ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.security,color: Colors.blue,),
            title: Text("Account",style: TextStyle(
                color: Colors.blue

            ),
            ),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat,color: Colors.blue,),
            title: Text("Chat ",style: TextStyle(
                color: Colors.blue

            ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity,color: Colors.blue,),
            title: Text("Profile ",style: TextStyle(
                color: Colors.blue

            ),
            ),
          ),
        ],
        onTap: (index){
          setState(() {
            _currentindex=index;
          });

        },
      ),
    );
  }

}