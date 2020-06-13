import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: IdGenerator(),));

class IdGenerator extends StatefulWidget {
  @override
  _IdGeneratorState createState() => _IdGeneratorState();
}

class _IdGeneratorState extends State<IdGenerator> {
  int randomNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(title: Text("Generate ID", style: TextStyle(fontWeight: FontWeight.bold),), backgroundColor: Colors.grey[800],
        centerTitle: true, elevation: 0,),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Center(child: CircleAvatar(backgroundImage: AssetImage("assets/bines.jpg"), radius: 40,),),
          SizedBox(height: 10.0),
          Divider(height: 10, color: Colors.red,),
          SizedBox(height: 10.0,),
          Text("Name", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20),),
          Text("Adedoyin", style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 30),),
          SizedBox(height: 10.0,),
          Text("ID", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 20),),
          Text("$randomNumber", style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold, letterSpacing: 1, fontSize: 30),),
          SizedBox(height: 15.0,),
          Row(children: <Widget>[
            Icon(Icons.mail, color: Colors.white,),
            Text("dreezybines@gmail.com", style: TextStyle(color: Colors.amber[400], letterSpacing: 1, fontSize: 30),),
          ],)
        ],),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          Random random = new Random();
          randomNumber = random.nextInt(999999) + 100000; // from 100000 upto 999999 included
        });
      }, child: Icon(Icons.shuffle),),
    );
  }
}

