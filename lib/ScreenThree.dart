import 'dart:io';

import 'package:flutter/material.dart';
//import './ScreenFour.dart';
//import 'package:qr_scanner_plus/qr_scanner_plus.dart';
//import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:rekt/AddEvent.dart';
import 'package:rekt/EntryGranted.dart';
import 'package:rekt/ReusedTicket.dart';
import './ScreenFour.dart';
//import './ReusedTicket.dart';



class ScreenThree extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _QRScanPageState();

}

class _QRScanPageState extends State<ScreenThree>{

  int _index=0;
  final qrKey = GlobalKey(debugLabel: 'QR');

  QRViewController? controller;

  Barcode? barcode;
  String? barcodeStr = "";

  void checkEntry(){
    barcodeStr=barcode!.code;
    print("barcode=============================================================================== "+ barcodeStr!);
      if(barcodeStr=="https://www.kaspersky.com"){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => EntryGranted(),
        ));
      }
  }

  @override
  void dispose(){
    controller?.dispose();
    super.dispose();
  }
  @override
  void reassemble(){
    super.reassemble();
    if (Platform.isAndroid){
      controller!.pauseCamera();
      controller!.resumeCamera();
    }
    controller!.resumeCamera();
  }
  @override
  Widget build(BuildContext context) => SafeArea(
      child: Scaffold(
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
            else if(_index==2) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EntryGranted(),
              ));
            }

          }),
          backgroundColor: Color(0xFF191919),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.qr_code,color: Colors.white,),label:'',),
            BottomNavigationBarItem(icon: Icon(Icons.person_rounded,color: Colors.grey,), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.ac_unit,color: Colors.grey,),label: ''),
        ],

        ),


        // bottomNavigationBar: BottomNavigationBar(
        //     //backgroundColor: Color(0xFF191919),
        //
        //     // items: const <BottomNavigationBarItem>[
        //     //   BottomNavigationBarItem(icon: Icon(Icons.qr_code,)),
        //     //   BottomNavigationBarItem(icon: Icon(Icons.person_rounded)),
        //     // ],
        //   ),
        body: Container(

          child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            buildQRView(context),

            //Widget checkEntry(context),
            //loadNextPage(context),
           Positioned(bottom: 10, child: buildResult()),
          ],


        ),

        ),

        // bottomNavigationBar: BottomNavigationBar(
        //   backgroundColor: Color(0xFF191919),
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(icon: Icon(Icons.qr_code,)),
        //     BottomNavigationBarItem(icon: Icon(Icons.person_rounded)),
        //   ],
        // ),
      ),


  );


  Widget buildResult() => Text(
      barcode!=null?'Result:${barcode!.code}':'Scan a code',
  maxLines:3,
  style: TextStyle(
      color: Colors.white,
  ),);




  Widget buildQRView(BuildContext context) => QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderWidth: 10,
        borderLength: 20,
        borderRadius: 10,
        borderColor: Colors.white,
        cutOutSize: MediaQuery.of(context).size.width * 0.8 ,
      ),
  );

   void onQRViewCreated(QRViewController controller) {
    print('Hello');
    debugPrint('Hi');
    setState(() => this.controller = controller);
    controller.scannedDataStream.listen((barcode) => setState(() =>
    {
      this.barcode=barcode,
      if(barcode.code!= null){
        debugPrint('hello1234${barcode.code!}'),
        checkEntry()
      }
    })
    );
    controller.pauseCamera();
    controller.resumeCamera();

  }

  // Widget checkEntry(BuildContext context) {
  //   barcodeStr=barcode?.code;
  //   if(barcodeStr=="https://www.kaspersky.com"){
  //     Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) => EntryGranted(),
  //     ));
  //   }
  //   else{
  //     Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) => ReusedTicket(),
  //     ));
  //   }
  // }
}





    




