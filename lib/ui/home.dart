import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

myapp1(){

  myprint(){
    print('Architaaaaaa');
  }

  myt(){
    Fluttertoast.showToast(
        msg: "This is Archita",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.amber,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  var mybody=Container(
    width: double.infinity,
    height: double.infinity,
    alignment: Alignment.center,
    color: Colors.red,
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          // padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
              width: 3,
            ),
          ),
          margin: EdgeInsets.all(50),
          alignment: Alignment.center,
          width: 250,
          height: 300,
          // color: Colors.green,
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Archita Arora',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Icon(Icons.email),
                Text('   arc@gmail.com'),
              ],
              )
            ]
          ),
        ),
        GestureDetector(
          onTap: myprint,
          
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg'),
                fit: BoxFit.fill
              ),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(75),
              border: Border.all(
                color: Colors.black,
                width:2,
              )
            ),
            alignment: Alignment.topCenter,
            width: 150,
            height: 150,
            // color:Colors.pink,
            child: Text('second'),
          ),
        ),
      ],
    ),
  );

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text('LW Students'),
        backgroundColor: Colors.amber,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.access_alarm), onPressed: null),
          IconButton(icon: Icon(Icons.add_a_photo), onPressed: myt),
        ],
      ),
      body: mybody,
    ),
  );
}