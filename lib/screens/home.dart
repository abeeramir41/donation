import 'package:flutter/material.dart';
import 'package:donation/bnv_screens/profile.dart';
import 'package:donation/bnv_screens/mainhome.dart';
import 'package:donation/bnv_screens/accounts.dart';
 class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }

 }
 class _HomeState extends State<Home>{
   Icon notificationicon = new Icon(Icons.notifications_active);
   int _currentindex=0;
   final tabs =[
     Mainhome(),
     Accounts(),
     Center(child: Text("Chat")),
     profile(),
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