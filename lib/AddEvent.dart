import 'package:flutter/material.dart';
import './ScreenThree.dart';
import './ScreenFour.dart';

class AddEvent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  int _index = 0;

  //@override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 80,
        centerTitle: true,
        title: Image.asset("assets/REKT LOGO.png",
          height: 88.05,
          width: 88,),
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


      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 56),
        //alignment: Alignment.center,
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 30.0,
          ),
          // Expanded(
          //   child: Padding(
          //   padding: EdgeInsets.all(21.0),

        Column(
          mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text('Add NEW EVENTS',
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 16,
            //height: 19.5,
            color: Colors.white,
          ),),

          SizedBox(
            height: 44.0,
          ),
          Container(
            child: Row(
              children: [
                Flexible(child: Text('Change Poster', style: TextStyle(
                  color: Colors.white,
                ),)),
                SizedBox(
                  width: 10.0,
                ),
                Icon(Icons.edit, color: Colors.white,),
              ],
            ),
          ),

          SizedBox(
            height: 15.0,
          ),

          Image.asset("assets/KMzuKmSPWnI (1).png",
            width: 205.45,
            height: 144.55,
          ),

          SizedBox(
            height: 30.45,
          ),

          Container(
            child: Row(
              children: [
                Flexible(child: Text('Add Description', style: TextStyle(
                  color: Colors.white,
                ),)),
                SizedBox(
                  width: 10.0,
                ),
                Icon(Icons.edit, color: Colors.white,),
              ],
            ),
          ),

          SizedBox(
            height: 30.45,
          ),

          Container(
            child: Row(
              children: [
                Flexible(child: Text('Add Tickets', style: TextStyle(
                  color: Colors.white,
                ),)),
                SizedBox(
                  width: 10.0,
                ),
                Icon(Icons.edit, color: Colors.white,),
              ],
            ),
          ),

          SizedBox(
            height: 30.45,
          ),

          Container(
            child: Row(
              children: [
                Flexible(child: Text('Add Premium tickets', style: TextStyle(
                  color: Colors.white,
                ),)),
                SizedBox(
                  width: 10.0,
                ),
                Icon(Icons.edit, color: Colors.white,),
              ],
            ),
          ),

          SizedBox(
            height: 30.45,
          ),

          Container(
            alignment: Alignment.center,
            //width: 200,
            child: Row(
              children: [
                Flexible(child: Text('Add Location', style: TextStyle(
                  color: Colors.white,
                ),)),
                SizedBox(
                  width: 10.0,
                ),
                Icon(Icons.edit, color: Colors.white,),
              ],
            ),
          ),

          SizedBox(
            height: 30.45,
          ),

          /*------Publish Button------*/

          SizedBox(
            width: 285,
            height: 46,

            child: ElevatedButton(onPressed: () {


                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenFour(),
                ));

            },

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),

                ),
                primary: Color(0xFFD9D9D9),
              ),
              child: Text(
                "Publish",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize:20,
                  color: Color(0xFF191919),
                ),
              ),


            ),
          ),





],
            ),
   //),),
        ],
      ),
      ),
    );
  }

}