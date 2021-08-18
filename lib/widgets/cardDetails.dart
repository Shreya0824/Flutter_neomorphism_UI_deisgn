import 'package:flutter/material.dart';
import 'package:flutter_ui_design/data.dart';

class cardDetails extends StatelessWidget {
  const cardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(alignment: Alignment.topLeft,child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          width: 250,
          child: Image.asset('images/mastercardlogo.png'),)),
        Align(alignment: Alignment.bottomRight,child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(height: 50,width: 100,decoration:
            BoxDecoration(color: primaryColor,boxShadow: customShadow,borderRadius: BorderRadius.circular(15)),),
        ),),


        Align(alignment: Alignment.bottomLeft,child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('**** **** **** ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black45)),
                  Text('2860',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black45),),
                ],
              ),
              Text('PLATINUM CARD',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.grey))

            ],
          ),
        ),)
      ],
    );
  }
}
