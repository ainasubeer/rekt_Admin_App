import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';

import 'ScreenThree.dart';

class ScreenTwo extends StatelessWidget{

  String uniqueid = "";
  String passcode = "";

Widget build(BuildContext context){
  return Scaffold(
    resizeToAvoidBottomInset: false,
    backgroundColor: Colors.black,
    appBar: AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 80,
      centerTitle: true,
      title: Image.asset("assets/REKT LOGO.png",
          height: 88.05,
          width: 88,
      ),
    ),


    body: Container(
      child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,

    children: [
      Expanded(
        child: Padding(
        padding: EdgeInsets.all(21.0),
    child: Row(
    children: [
      //Expanded(
         Container(
        //margin: const EdgeInsets.only(top: 50,),
        //padding: EdgeInsets.fromLTRB(50, 187 , 61, 527),
        child: Column(
          children:[
            SizedBox(
              height: 50,
            ),

            Container(
              width: 249,
              height: 86,
              child: Text(
                "Please enter your ID and Passcode",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 23,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            SizedBox(
              height: 54,
            ),

            /*----Unique ID-----*/

            Container(
              width: 249,
              child: Text(
                "Unique ID",
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

         SizedBox(
           height: 1.0,
         ),

      Container(
        width: 350,
        child: Padding(
          padding: const EdgeInsets.all(1.0),

          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PinCodeFields(
                padding: const EdgeInsets.all(1.0),
                margin: const EdgeInsets.all(1.0),
                length: 5,
                fieldBorderStyle: FieldBorderStyle.square,
                responsive: false,
                fieldHeight:45.0,
                fieldWidth: 42.0,
                borderWidth:0.0,
                activeBorderColor: Colors.pink,
                activeBackgroundColor: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(10.0),
                keyboardType: TextInputType.number,
                autoHideKeyboard: false,
                fieldBackgroundColor: Color(0xFF363636),
                borderColor: Colors.black38,
                textStyle: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                onComplete: (output) {
                  // Your logic with pin code
                  uniqueid = output;
                },
              ),

            ],
          ),

         // Container(
         //
         //   width: 250,
         //   child: Row(
         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
         //  children:[
         //    Container(
         //      decoration: BoxDecoration(
         //        color: Color(0xFF363636),
         //        borderRadius: BorderRadius.all(Radius.circular(10.0)),
         //        border: Border.all(
         //          color: Color(0xFF363636),
         //        ),
         //      ),
         //      width: 42,
         //      height: 45,
         //    ),
         //
         //
         //
         //    Container(
         //      decoration: BoxDecoration(
         //        color: Color(0xFF363636),
         //        borderRadius: BorderRadius.all(Radius.circular(10.0)),
         //        border: Border.all(
         //          color: Color(0xFF363636),
         //        ),
         //      ),
         //      width: 42,
         //      height: 45,
         //    ),
         //
         //    Container(
         //      decoration: BoxDecoration(
         //        color: Color(0xFF363636),
         //        borderRadius: BorderRadius.all(Radius.circular(10.0)),
         //        border: Border.all(
         //          color: Color(0xFF363636),
         //        ),
         //      ),
         //      width: 42,
         //      height: 45,
         //    ),
         //
         //    Container(
         //      decoration: BoxDecoration(
         //        color: Color(0xFF363636),
         //        borderRadius: BorderRadius.all(Radius.circular(10.0)),
         //        border: Border.all(
         //          color: Color(0xFF363636),
         //        ),
         //      ),
         //      width: 42,
         //      height: 45,
         //    ),
         //
         //    Container(
         //      decoration: BoxDecoration(
         //        color: Color(0xFF363636),
         //        borderRadius: BorderRadius.all(Radius.circular(10.0)),
         //        border: Border.all(
         //          color: Color(0xFF363636),
         //        ),
         //      ),
         //      width: 42,
         //      height: 45,
         //    ),
         //
         //  ],
            ),
          ),

            SizedBox(
              height: 24.0,
            ),

            /*---PASSCODE----*/
            Container(
            width: 249,
              child: Text(
                "Passcode",
                style: TextStyle(

                  color: Color(0xFFFFFFFF),
                  fontSize: 23,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            // SizedBox(
            //   height: 10.0
            // ),



            Container(
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(1.0),

                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PinCodeFields(
                      padding: const EdgeInsets.all(1.0),
                      margin: const EdgeInsets.all(1.0),
                      length: 5,
                      fieldBorderStyle: FieldBorderStyle.square,
                      responsive: false,
                      fieldHeight:45.0,
                      fieldWidth: 42.0,
                      borderWidth:0.0,
                      activeBorderColor: Colors.pink,
                      activeBackgroundColor: Colors.pink.shade100,
                      borderRadius: BorderRadius.circular(10.0),
                      keyboardType: TextInputType.number,
                      autoHideKeyboard: false,
                      fieldBackgroundColor: Color(0xFF363636),
                      borderColor: Colors.black38,
                      textStyle: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      onComplete: (output) {
                        // Your logic with pin code
                        passcode = output;
                      },
                    ),

                  ],
                ),
                // children:[
                //   PinCodeTextField(
                //       appContext: context,
                //       length: 5,
                //       onChanged: (value){
                //         print(value);
                //       },),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF363636),
                  //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //     border: Border.all(
                  //       color: Color(0xFF363636),
                  //     ),
                  //   ),
                  //   width: 42,
                  //   height: 45,
                  // ),
                  //
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF363636),
                  //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //     border: Border.all(
                  //       color: Color(0xFF363636),
                  //     ),
                  //   ),
                  //   width: 42,
                  //   height: 45,
                  // ),
                  //
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF363636),
                  //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //     border: Border.all(
                  //       color: Color(0xFF363636),
                  //     ),
                  //   ),
                  //   width: 42,
                  //   height: 45,
                  // ),
                  //
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF363636),
                  //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //     border: Border.all(
                  //       color: Color(0xFF363636),
                  //     ),
                  //   ),
                  //   width: 42,
                  //   height: 45,
                  // ),
                  //
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xFF363636),
                  //     borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //     border: Border.all(
                  //       color: Color(0xFF363636),
                  //     ),
                  //   ),
                  //   width: 42,
                  //   height: 45,
                  // ),

               // ],
              ),
            ),
         SizedBox(
           height: 100,
         ),

         /*----Verify Button----*/
              SizedBox(
                width: 285,
                height: 46,

              child: ElevatedButton(onPressed: () {

                if (uniqueid=="12345" && passcode=="12345")
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenThree(),
                    ));
                  }
                else
                  {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenTwo(),
                    ));
                  }
              },

                 style: ElevatedButton.styleFrom(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(10.0),

                   ),
                   primary: Color(0xFFD9D9D9),
                 ),
                   child: Text(
                    "Verify",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:20,
                      color: Color(0xFF191919),
                   ),
                 ),


           ),
              ),
           // child: Text(
           //   "Verify",
           //   textAlign: TextAlign.center,
           //   style: TextStyle(
           //     fontSize:20,
           //
           //   ),
           // ),

          ],




      ),
  ),
  ],
  ),






   // ),

  //),
      ),),
  ],
  ),
    ),
    ),
  );
}
}