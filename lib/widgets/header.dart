import 'package:flutter/material.dart';
import 'package:flutter_ui_design/data.dart';
class WalletHeader extends StatelessWidget {
  const WalletHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Shreya's Wallet",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          Container(
            height: 50,
              width: 50,
            decoration: BoxDecoration(
              boxShadow:  [
                BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: Offset(3,3),
                    color: Colors.black26)
              ],color: primaryColor,shape: BoxShape.circle
            ),
            child: Stack(
              children: <Widget>[
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        color: primaryColor,shape: BoxShape.circle,boxShadow:  [
                      BoxShadow(
                          spreadRadius: 4,
                          blurRadius: 5,
                          offset: Offset(1,1),
                          color: Colors.black26)
                    ],
                    ),
                  ),
                ),
                Center(
                  child: Icon(Icons.notifications),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
