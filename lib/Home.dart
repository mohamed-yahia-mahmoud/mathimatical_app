import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController firstNumber=new TextEditingController();

  TextEditingController secondNumber=new TextEditingController();

  TextEditingController equationType=new TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [


            SizedBox(
              height: MediaQuery.of(context).size.height*.1,
            ),


            //textfield of first number
            Padding(
                                           padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 8),
                                           child: Container(
                                             // width: MediaQuery.of(context).size.width*.3,
                                             decoration: BoxDecoration(
                                               color: Color(0xFFf9f9f9),
                                               border: Border.all(color: Colors.grey),
                                             ),
                                             child:  Padding(
                                               padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 4),
                                               child: TextField(
                                                 textInputAction: TextInputAction.done,
                                                 maxLines: null,
                                                 keyboardType: TextInputType.number,
                                                 controller:  firstNumber,
                                                 textAlign: TextAlign.center,
                                                 onChanged: (res) {

                                                 },
                                                 onEditingComplete: (){
                                                   FocusScopeNode currentFocus = FocusScope.of(context);
                                                   if (!currentFocus.hasPrimaryFocus) {
                                                     currentFocus.unfocus();
                                                   }
                                                 },
                                                 decoration: new InputDecoration.collapsed(
                                                     hintText: "Add a number",

                                                 ),
                                               ),
                                             ),
                                           ),
                                         ),

            //textfield of month
            Padding(
                                           padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 8),
                                           child: Container(
                                             // width: MediaQuery.of(context).size.width*.1,
                                             decoration: BoxDecoration(
                                               color: Color(0xFFf9f9f9),
                                               border: Border.all(color: Colors.grey),
                                             ),
                                             child:  Padding(
                                               padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 4),
                                               child: TextField(
                                                 textInputAction: TextInputAction.done,
                                                 maxLines: null,
                                                 keyboardType: TextInputType.text,
                                                 controller:  equationType,
                                                 textAlign: TextAlign.center,
                                                 onChanged: (res) {

                                                 },
                                                 onEditingComplete: (){
                                                   FocusScopeNode currentFocus = FocusScope.of(context);
                                                   if (!currentFocus.hasPrimaryFocus) {
                                                     currentFocus.unfocus();
                                                   }
                                                 },
                                                 decoration: new InputDecoration.collapsed(
                                                     hintText: "add one operator of these {+,-,*,/}"
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ),

            //textfield of year
            Padding(
                                           padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 8),
                                           child: Container(
                                             // width: MediaQuery.of(context).size.width*.3,
                                             decoration: BoxDecoration(
                                               color: Color(0xFFf9f9f9),
                                               border: Border.all(color: Colors.grey),
                                             ),
                                             child:  Padding(
                                               padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 4),
                                               child: TextField(
                                                 textInputAction: TextInputAction.done,
                                                 maxLines: null,
                                                 keyboardType: TextInputType.number,
                                                 controller:  secondNumber,
                                                 textAlign: TextAlign.center,
                                                 onChanged: (res) {

                                                 },
                                                 onEditingComplete: (){
                                                   FocusScopeNode currentFocus = FocusScope.of(context);
                                                   if (!currentFocus.hasPrimaryFocus) {
                                                     currentFocus.unfocus();
                                                   }
                                                 },
                                                 decoration: new InputDecoration.collapsed(
                                                     hintText: "Add a number"
                                                 ),
                                               ),
                                             ),
                                           ),
                                         ),





            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10,bottom: 8),
              child: Center(
                child: InkWell(
                  onTap: ()async{

                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height*.07,
                    width: MediaQuery.of(context).size.width ,
                    color: Color(0xFF00578a),
                    child: Center(child: Text('calculate',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
