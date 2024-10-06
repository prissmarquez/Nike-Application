import 'package:flutter/material.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          //logo 
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Image.asset(
              "lib/images/nikelogo1.png",
              height: 240,
            
              ),
          ),

          SizedBox(height: 20.0),

          //title
          Text(
            "Only walks to the future",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ) 
            )
          
          //sub title

          //start new button 
        ],
      ),
    );
  }
}