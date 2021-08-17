

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
  int yerNo=1;
  int kisiNo=1;
  int yemekNo=1;

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
                    'assets/yer$yerNo.jpg',
                    width: 220.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),

             SizedBox(height: 5,),
              Expanded(flex: 1,
                child: MaterialButton(

                  padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 40.0),

                  child:Text(  "Nereyi Gezeyim",style: TextStyle(fontSize: 18),),
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,

                  splashColor: Colors.black38,
                  onPressed: () {

                    setState(() {
                      yerNo=Random().nextInt(5)+1;
                    });
                  },


                ),

              ),




              SizedBox(height: 5,),
              Expanded(flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),

                  child: Image.asset(
                    'assets/kisi$kisiNo.jpg',
                    width: 220.0,
                    height: 150.0,
                    fit: BoxFit.fill,

                  )

                ),
              ),
              SizedBox(height: 5,),

              Expanded(flex: 1,
                child: MaterialButton(

              splashColor: Colors.teal,
               padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 40.0),

                 child:Text(  "Kiminle Gezeyim",style: TextStyle(fontSize: 18),),
                  color: Colors.lightBlueAccent,
                  onPressed: () {

                setState(() {
                  kisiNo=Random().nextInt(5)+1;
                });
                 },
                  textColor: Colors.white,


                 // title: Text('Kiminle Gezeyim  ', style: TextStyle(color: Colors.black),
                  ),

                ),



              SizedBox(height: 5,),
              Expanded(flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/yemek$yemekNo.jpg',
                    width: 220.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                ),
              ),

            SizedBox(height: 5,),
              Expanded(flex: 1,
                child: MaterialButton(


                  padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 60.0),

                  child:Text(  "Ne Yiyeyim",style: TextStyle(fontSize: 18),),
                  textColor: Colors.white,
                  splashColor: Colors.black38,
                  color: Colors.lightBlueAccent,
                  onPressed: () {

                    setState(() {
                      yemekNo=Random().nextInt(5)+1;
                    });
                  },


                ),

              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );
  }
}