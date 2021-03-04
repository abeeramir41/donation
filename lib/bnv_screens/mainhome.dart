import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:donation/screens/login_page.dart';
import 'package:donation/services/auth_service.dart';
class Mainhome extends StatelessWidget{
  AuthService _authService = AuthService();
  Icon notificationicon = new Icon(Icons.notifications_active);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold( drawer: Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                child: Text(
                  "",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                    gradient: LinearGradient(
                        colors: [Colors.red, Colors.purple])),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 8),
                child: Text("Mr. Abeer",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                    color: Colors.white
                ),),
              ), Container(
                margin: EdgeInsets.only(top: 10,left: 8),
                child: Text("The NGO of Life",style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                    color: Colors.white
                ),),
              ),
            ],
          ) ,
            decoration: BoxDecoration(
              color: Colors.blue
            ),
          ),
          ListTile(
            title: Text("Home"),
          ),ListTile(
            title: Text("My Projects"),
          ),ListTile(
            title: Text("Documents"),
          ),ListTile(
            title: Text("Proposal"),
          ),ListTile(
            title: Text("My Profile"),
          ),ListTile(
            title: Text("Support"),
          ),ListTile(
            title: Text("Transaction"),
          ),ListTile(
            title: Text("Logout"),
            onTap: (){
              _authService.signOut();
              Navigator.pushReplacement(context,
    MaterialPageRoute(
    builder: (context) =>LoginPage()));
    },



          ),
        ],
      ),

    ),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Donation App "),
        actions: <Widget>[
          new IconButton(
            icon: notificationicon,
            onPressed: (){

            },
          ),
        ],

      ),
      body: Container(

        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(

              height: 220,
              color: Colors.blue,
            ),
            Positioned(
              top: 30,
              right: 20,
              left: 20,
              child: Container(
                width: double.infinity,
                height: 70,
                child: Row(

                  children: [
                    Container(
                      width:50,
                      height: 50,

                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 50,
                      ),
                    ), Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text("Good Morning Mr.Nadeem!",style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                color: Colors.white
                            ),),
                          ), Container(
                            margin: EdgeInsets.only(top: 10,right: 30),
                            child: Text("Please check your NGO Projects",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand',
                                color: Colors.white
                            ),),
                          ),
                        ],
                      ),
                    ), Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Icon(Icons.arrow_forward_ios_outlined,size: 30,color: Colors.white,)

                    ),
                  ],
                ),

                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage('assets/images/back.jpeg'),fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
            Positioned(
              top:100,
              left: 20,
              right: 20,

              child:  Container(

                child: Column(
                  children: [
                   Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 20),
                      height: 220,
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 20) ,
                                  child: Column(
                                    children: <Widget>[
                                      Text("Pension Plan",style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Quicksand',
                                          color: Colors.black
                                      )),
                                      Container(
                                        margin: EdgeInsets.only(right: 8),
                                        child: Text("ID 8343027",style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Quicksand',
                                            color: Colors.green
                                        ),),
                                      ),
                                    ],
                                  ),
                                ),Container(
                                    width: 41,
                                    height: 40,

                                    margin: EdgeInsets.only(right: 30),
                                    decoration: BoxDecoration(
                                      color: Colors.blue,

                                      borderRadius: BorderRadius.all(Radius.circular(10)),

                                    ), child: Icon(Icons.monetization_on_outlined,size: 30,color: Colors.white,)


                                ),
                              ],
                            ),


                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text("PROJECT VALUE",style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Quicksand',
                                      color: Colors.black
                                  ),
                                  ),
                                ),Container(
                                  margin: EdgeInsets.only(right: 80),
                                  child: Text(
                                    "CONTRIBUTER",style: TextStyle(fontSize: 12,
                                      fontFamily: 'Quicksand',
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text("\$ 76,196.91",style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                  ),
                                ),Container(
                                  margin: EdgeInsets.only(right: 110),
                                  child: Text(
                                    "Donor",style: TextStyle(fontSize: 18,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text("STATUS",style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Quicksand',
                                      color: Colors.black
                                  ),
                                  ),
                                ),Container(
                                  margin: EdgeInsets.only(right: 30),

                                  child: Text(
                                    "TOTAL CONTRIBUTIONS",style: TextStyle(fontSize: 12,
                                      fontFamily: 'Quicksand',
                                      color: Colors.black
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Text(" In Force",style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                  ),
                                ),Container(
                                  margin: EdgeInsets.only(right: 90),
                                  child: Text(
                                    "\$ 72,502",style: TextStyle(fontSize: 18,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                  ),
                                ),

                              ],
                            ),
                          )
                        ],
                      ),

                      decoration: BoxDecoration(

                        color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(4.0,4.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0),
                        BoxShadow(
                            color: Colors.white10,
                            offset: Offset(0.0,0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0),
                      ],

                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),

                    ),


                  ],
                ),
              ),
            ),
            Positioned(
              top: 340,
              left: 20,
              right: -2.5,


              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(


                      margin: EdgeInsets.only(top: 20, right: 20),
                      child: Text("Your Domains",style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand',
                          color: Colors.black
                      ),),
            ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      Container(
                          width: 51,
                          height: 50,

                          margin: EdgeInsets.only(right: 25),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],

                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ), child: Icon(Icons.monetization_on_outlined,size: 30,color: Colors.blue,)


                      ), Container(
                          width: 51,
                          height: 50,

                            margin: EdgeInsets.only(right: 25),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],

                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ), child: Icon(Icons.book,size: 30,color: Colors.blue,)


                      ), Container(
                          width: 51,
                          height: 50,

                            margin: EdgeInsets.only(right: 25),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],

                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ), child: Icon(Icons.home,size: 30,color: Colors.blue,)


                      ), Container(
                          width: 51,
                          height: 50,

                            margin: EdgeInsets.only(right: 25),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],

                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ), child: Icon(Icons.car_rental,size: 30,color: Colors.blue,)


                      ), Container(
                          width: 51,
                          height: 50,

                          margin: EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            color: Colors.blue[100],

                            borderRadius: BorderRadius.all(Radius.circular(10)),

                          ), child: Icon(Icons.family_restroom,size: 30,color: Colors.blue,)


                      ),
                    ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(


                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: Text("News and Update",style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.black
                        ),),
                      ),
                      Container(


                        margin: EdgeInsets.only(top: 20, right: 20),
                        child: Text("See More",style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            color: Colors.blue
                        ),),
                      ),
                    ],
                  ),Container(
                    width: double.infinity,
                    height: 110,
                    margin: EdgeInsets.only(right: 20,top: 10),
                    child: Row(

                      children: [
                        Container(
                          width:90,
                          height: 90,

                          decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/back.jpeg'),fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(10))
                          ),
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 10),

                        ), Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text("Three common financial",style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    color: Colors.blue
                                ),),
                              ), Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text("Please check your NGO Projects",style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Quicksand',
                                    color: Colors.black
                                ),),
                              ),
                            ],
                          ),
                        ), Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Icon(Icons.arrow_forward_ios_outlined,size: 30,color: Colors.white,)

                        ),
                      ],
                    ),

                    decoration: BoxDecoration(

                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[300],
                            offset: Offset(4.0,4.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0),
                        BoxShadow(
                            color: Colors.white10,
                            offset: Offset(0.0,0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0),
                      ],

                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),

                ],
              ),
            ),



          ],

        ),

      ),
    );
  }

}