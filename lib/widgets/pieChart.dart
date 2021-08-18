import 'dart:math';

import 'package:flutter/material.dart';

import '../data.dart';

class PieChart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              spreadRadius: 6,
              blurRadius: 10,
              offset: Offset(3, 3),
              color: Colors.black38)
        ],color: primaryColor,shape: BoxShape.circle),
          child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CustomPaint(
                    child:Container(),
          foregroundPainter: PieChartPainter(),),
                ),
              Center(
                child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(boxShadow: customShadow,color: primaryColor,shape: BoxShape.circle),),
              ),
                Center(
                    child: Text(
                      "\$ 950.0" ,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize:15),
                    )),
              ])
      ),
    );

  }
}
class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Offset center= Offset(size.width/2, size.height/2);
    double radius=min(size.width/2,size.height/2);
    var paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 45;
    double total =0;
    expenses.forEach((element) { total += element['amount']; });
    var startRadian=-pi/2;
    for(int i=0;i<expenses.length;i++)
      {
        var currentExpense=expenses[i];
        var sweepRadian=(currentExpense['amount']/total*2*pi);
        paint.color=pieColors[i];
        canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
        startRadian += sweepRadian;

      }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return true;
  }

}
