import 'package:flutter/material.dart';
import './ScreenThree.dart';
import './ScreenFour.dart';

class EntryGranted extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EntryGrantedState();
}

class _EntryGrantedState extends State<EntryGranted>{
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        centerTitle: true,
        title: Image.asset("assets/REKT LOGO.png",
          height: 88.05,
          width: 88,),
      ),

      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ENTRY GRANTED",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF0DD05B),
                ),
              ),
              SizedBox(
                height: 64,
              ),
              Text(
                "Ticket ID: ",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),

            ],
          ),

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        onTap: (int index) => setState(() {
          _index = index;
          if(_index==1) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ScreenFour(),
            ));
          }
          else if(_index==0) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ScreenThree(),
            ));
          }
        }),
        backgroundColor: Color(0xFF191919),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.qr_code,color: Colors.white,),label:'',),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded,color: Colors.grey,), label: ''),


        ],



      ),

    );


  }
}