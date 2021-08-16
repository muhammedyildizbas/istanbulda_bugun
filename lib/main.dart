import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MyHomePage(),);


}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.lightBlueAccent, title: Text('İstanbul da Bugün '),centerTitle: true ),
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 5,),
              Expanded(flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/yer1.jpg',
                    width: 220.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
         /*     Container(

                width: 300,
                height: 150,
                child: Image.asset('assets/kizkalesi.jpg' ),

                decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius:BorderRadiusDirectional.circular(10.0),color: Colors.teal),
              ),*/
             //SizedBox(height: 5,),
            Expanded(flex: 1,
             child: Card(
                margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 80.0),
                child: ListTile(
                  leading: Icon(Icons.directions_walk ,color: Colors.teal),
                  title: Text('Nereyi Gezeyim  ', style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),



             /* Container(

                width: 300,
                height: 150,

                child: CircleAvatar( child: Image.asset('assets/kardes.png')),
                decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius:BorderRadiusDirectional.circular(10.0),color: Colors.teal),
              ),*/
             // SizedBox(height: 5,),
              Expanded(flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),

                  child: Image.asset(
                    'assets/kisi2.jpg',
                    width: 220.0,
                    height: 150.0,
                    fit: BoxFit.fill,

                  ),
                ),
              ),
              //SizedBox(height: 5,),

              Expanded(flex: 1,
                child: Card(
                margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 80.0),
                child: ListTile(
                  leading: Icon(Icons.people   ,color: Colors.teal),
                  title: Text('Kiminle Gezeyim  ', style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ),

            //  SizedBox(height: 5,),
              Expanded(flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/yemek3.jpg',
                    width: 220.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            /*  Container(

                width: 300,
                height: 150,
                child: Image.asset('assets/patlican_musakka.jpg' ),
                decoration: BoxDecoration(shape: BoxShape.rectangle,borderRadius:BorderRadiusDirectional.circular(10.0),color: Colors.teal),
              ),*/
           //   SizedBox(height: 5,),
             Expanded(flex:1,child:  Card(
               margin: EdgeInsets.symmetric(vertical: 5.0,horizontal: 80.0),
               child: ListTile(
                 leading: Icon(Icons.food_bank ,color: Colors.teal),
                 title: Text('Ne Yiyeyim', style: TextStyle(color: Colors.black),
                 ),
               ),
             ),
             ),

            ],
          ),
        ),
      ),
    );
  }
}