import 'package:flutter/material.dart';
class Contributortabs extends StatelessWidget{
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
                Text("USAID",style: TextStyle(
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
                Text("Contributor Type"),
                Text("Doner",style: TextStyle(

                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Currency",style: TextStyle(
                  fontSize: 16,

                  color: Colors.black,
                ),),
                Text("",style: TextStyle(

                  color: Colors.blue,
                ),),
              ],
            ),
          ), Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Plan Currency"),
                Text("USD",style: TextStyle(

                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Renewal Currency"),
                Text("USD",style: TextStyle(

                  color: Colors.blue,
                ),),
              ],
            ),
          ), Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",style: TextStyle(
              fontSize: 16,

              color: Colors.black,
            )),
                Text("",style: TextStyle(

                  color: Colors.blue,
                ),)
              ],
            ),
          ),
          Container( margin: EdgeInsets.only(left: 20,right: 20,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Contributions"),
                Text("\$ 72,502",style: TextStyle(

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