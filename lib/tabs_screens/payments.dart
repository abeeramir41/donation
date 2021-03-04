import 'package:donation/model/payment_transaction.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/payment_transaction.dart';
import 'package:intl/intl.dart';
class Payment extends StatelessWidget{
  final List<PaymentTransaction> transactions=[
    PaymentTransaction('Cash', 'Settled', DateTime.now(), 1574.30),
    PaymentTransaction('Credit', 'Settled', DateTime.now(), 1574.30),
    PaymentTransaction('Cash', 'Settled', DateTime.now(), 1574.30),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
       children:<Widget> [
         Container(
           margin: EdgeInsets.only(top: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget> [
               Container(

                 child: Column(
                   children: [
                     Container(
                       width:160,
                       height: 50,

                       decoration: BoxDecoration(
                         color: Colors.blue,
                         borderRadius: BorderRadius.all(Radius.circular(4)),
                       ),child:  Column(
                       children: [
                         Container(
                           margin: EdgeInsets.only(top: 4),
                           child: Text("Total Paid to Date",style: TextStyle(
                             color: Colors.white,
                             fontFamily: 'Quicksand',
                             fontWeight: FontWeight.bold,
                           ),),
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 2),
                           child: Text("\$ 72,502",style: TextStyle(
                             color: Colors.white,
                             fontFamily: 'Quicksand',
                             fontWeight: FontWeight.bold,
                           ),),
                         )
                       ],
                     ),
                     ),

                   ],
                 ),
               ),Container(
                 child: Column(
                   children: [ Container(width:160,
                     height: 50,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.all(Radius.circular(4)),
                         border: Border.all(
                           color: Colors.blue,
                           width: 2,

                         ),
                     ),
                     child: Column(
                       children: [
                         Container(
                           margin: EdgeInsets.only(top: 4),

                           child: Text("Outstanding Balance",style: TextStyle(
                             color: Colors.blue,
                             fontFamily: 'Quicksand',
                             fontWeight: FontWeight.bold,
                           ),),
                         ),Container(
                           margin: EdgeInsets.only(top: 2),
                           child: Text("\$ 3.69491",style: TextStyle(
                             color: Colors.blue,
                             fontFamily: 'Quicksand',
                             fontWeight: FontWeight.bold,
                           ),),
                         )
                       ],
                     ),
                   ),

                   ],
                 ),
               ),
             ],
           ),
         ),ListView.builder(
           scrollDirection: Axis.vertical,
           shrinkWrap: true,
           itemBuilder: (ctx, index) {
           return Container(
             width: double.infinity,
             height: 60,
             margin: EdgeInsets.only(top: 10,left: 20,right: 20),
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


             ),
             child: Row(
               children: <Widget>[
                 Expanded(
                   flex: 1,
                   child: Container(
                     alignment: Alignment.topCenter,

                     child: Container( width:45, height: 48,
                       decoration: BoxDecoration(

                           borderRadius: BorderRadius.all(Radius.circular(50))
                       ),
                       margin: EdgeInsets.only(left: 10,top: 5),
                       child: CircleAvatar( backgroundColor: Colors.blue, radius: 50,
                           child: Icon( Icons.monetization_on_outlined,
                             color: Colors.white, size: 25, )),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 1,
                   child: Container(
                     alignment: Alignment.centerLeft,

                       child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget> [
                           Text(transactions[index].title,style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 16,
                             fontFamily: 'OpenSand',

                           ), ),
                           Container(
                             margin: EdgeInsets.only(top: 2),
                             child: Text(DateFormat.yMMMd().format(transactions[index].date),style: TextStyle(
                               fontFamily: 'OpenSand'
                             ),
                             ),
                           ),
                       ],),
                   ),
                 ),
                 Expanded(
                   flex: 1,
                   child: Container(

                     decoration: BoxDecoration(color: Colors.white),
                   ),
                 ),
                 Expanded(
                   flex: 1,
                   child: Container(

                     decoration: BoxDecoration(color: Colors.white),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,

                       children:<Widget> [
                         Container(
                           alignment: Alignment.center,
                           child: Text( "\$"" "+ transactions[index].amount.toStringAsFixed(1),style: TextStyle(
                             fontWeight: FontWeight.bold,
                             fontSize: 16,
                             fontFamily: 'OpenSand',
                             color: Colors.green,
                           ),),
                         ),
                         Container(
                           margin: EdgeInsets.only(top: 2),
                           alignment: Alignment.center,
                           child: Text(transactions[index].settled,style:TextStyle(


                             fontFamily: 'OpenSand',
                             color: Colors.black,
                           ), ),
                         ),

                       ],),
                   ),
                 ),
               ],
             ),

           );
         },
           itemCount: transactions.length,

         ),

       ],
      ),
    );
  }

}