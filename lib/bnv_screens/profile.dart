import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class profile extends StatelessWidget{
  Icon notificationicon = new Icon(Icons.arrow_back);
  Icon notificationbel = new Icon(Icons.notifications_active);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(

        title: Container( child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ Column(
            children: [
              IconButton(
                icon: notificationicon,
                onPressed: (){

                },
              ),

            ],
          ),Column(
            children: [
              Container( child: Text("Profile")),
            ],
          ),Column(
            children: [
              IconButton(
                icon: notificationbel,
                onPressed: (){

                },
              ),
            ],
          )


          ],
        ),
        ),


      ),
    body: Container(

      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(

              height: 150,
            color: Colors.blue,
          ),
          Positioned(
            top: 50,
            right: 20,
            left: 20,
            child: Container(
            width: double.infinity,
            height: 220,
              child: Column(
                children: <Widget>[
                  Container(
                    width:100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 10),
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                      radius: 50,
                    ), 
                  ),Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("Mr. Abber",style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Colors.white
                    ),),
                  ), Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("The NGO of Life",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Colors.white
                    ),),
                  ),Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text("+921234567890",style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand',
                        color: Colors.white
                    ),),
                  )
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
            top:280,
            left: 20,
            right: 20,

            child:  Container(

              child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 10),
                  child: Text("5 Projects Listed",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quicksand',
                      color: Colors.blue
                  ),),
                ),Container(
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
                    border: Border.all(
                      color: Colors.white70,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[600],
                        offset: Offset(4.0,4.0),
                        blurRadius: 10.0,
                        spreadRadius: 0.0),
                      BoxShadow(
                      color: Colors.white,
                      offset: Offset(4.0,4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0),
  ],


                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),

                ),


              ],
            ),
            ),
          ),


        ],

      ),

    ),
    );
  }

}