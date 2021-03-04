import 'package:flutter/material.dart';
class Projectstabs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(

              children: [
                Text("Project Summary",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Project Plan"),
                Text("IPP",style: TextStyle(

                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Status"),
                Text("In Force",style: TextStyle(

                  color: Colors.blue,
                ),),
              ],
            ),
          ), Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(

              children: [
                Text("Project Timeline",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),),
              ],
            ),
          ), Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Start Date"),
                Text("01 March 2014",style: TextStyle(

                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Last Review Date"),
                Text("31 March 2014",style: TextStyle(

                  color: Colors.blue,
                ),),
              ],
            ),
          ), Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Start Date"),
                Text("01 March 2014",style: TextStyle(

                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Maturity Date"),
                Text("06 April 2022",style: TextStyle(

                  color: Colors.blue,
                ),),
              ],
            ),
          ), Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(

              children: [
                Text("Financial Information",style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),)
              ],
            ),
          ),Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Investment Strategy"),
                Text("N/A",style: TextStyle(

                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Project Value"),
                Text("\$ 76,196.91 ",style: TextStyle(

                  color: Colors.blue,
                ),),
              ],
            ),
          ),
        ],
      ),

    );
  }

}