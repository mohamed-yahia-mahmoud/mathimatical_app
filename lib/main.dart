import 'package:flutter/material.dart';
import 'package:mathimatical_app/Home.dart';

Future<void> main()  {

  Future.delayed(
      Duration(milliseconds: 50),
          () => runApp(
        MyApp(),
      ));
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {

     super.initState();
   }



  @override
  Widget build(BuildContext context) {



    return   MaterialApp(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
          ],
           // for testing ocr call MyHomePage
          home: new Home() ,
          navigatorKey: navigatorKey,

        );



  }
}

