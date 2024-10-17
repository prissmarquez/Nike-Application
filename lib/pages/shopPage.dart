import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child:Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 10,),
              Text ("Search"),
            ],
          )
           
        )

        //message

        //hot picks 
      ]
    );
  }
}