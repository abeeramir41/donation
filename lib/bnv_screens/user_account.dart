import 'package:flutter/material.dart';
import 'package:donation/tabs_screens/contributor.dart';
import 'package:donation/tabs_screens/projecttab.dart';
class UserAccounts extends StatelessWidget{
  Icon notificationicon = new Icon(Icons.arrow_back);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title:Container( child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: notificationicon,
                    onPressed: (){

                    },
                  ),Container( child: Text("Account")),
                ],

              ),

            ],
          ),
          ),
          bottom: TabBar(
            onTap: (index) {
              // Tab index when user select it, it start from zero
            },
            tabs: [
              Tab(child: Text("Projects")),
              Tab(child: Text("Contributor")),
              Tab(child: Text("Payments")),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Projectstabs(),
            Contributortabs() ,
            Center(
                child: Text(
                  "2",
                  style: TextStyle(fontSize: 40),
                )),
          ],
        ),
      ),


    );

  }

}