import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:donation/model/payment_transaction.dart';
import 'package:intl/intl.dart';
class UserProjects extends StatelessWidget{
  Icon notificationicon = new Icon(Icons.arrow_back);
  Icon notificationbel = new Icon(Icons.notifications_active);
  final List<PaymentTransaction> transactions=[
    PaymentTransaction('Cash', 'Settled', DateTime.now(), 1574.30),
    PaymentTransaction('Credit', 'Settled', DateTime.now(), 1574.30),
    PaymentTransaction('Cash', 'Settled', DateTime.now(), 1574.30),
  ];
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
          Container( child: Text("My Projects")),
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
      body:ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return Container(
            margin: EdgeInsets.only(top: 1,left: 20,right: 20),

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
          );
        },
        itemCount: transactions.length,

      ),
    );
  }

}