import 'package:flutter/material.dart';
import 'package:flutter_ui_design/data.dart';
import 'package:flutter_ui_design/widgets/pieChart.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin:EdgeInsets.symmetric(horizontal:30,vertical: 20),
            child: Text("Expenses",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
        Row(
          children: <Widget>[
            Expanded(
                flex: 8,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses.map((value)=>Row(
                      children: <Widget>[
                        CircleAvatar(radius: 5,backgroundColor: pieColors[expenses.indexOf(value)],),
                        SizedBox(width: 8,),
                        Text(value['name'],style: TextStyle(fontSize: 18),)
                      ],
                    )).toList(),
                  ),

            )),
            Expanded(
                flex: 7,
                child: PieChart()),
          ],
        ),
      ],
    );
  }
}
