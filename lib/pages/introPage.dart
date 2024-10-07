import 'package:flutter/material.dart';
import 'package:naiki/pages/HomePage.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(206, 222, 222, 222),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              SizedBox(height: 40,),
              //logo 
              Padding(
                padding: const EdgeInsets.all(35.0),
                child: Image.asset(
                  "lib/images/nikelogo1.png",
                  height: 240,
                
                  ),
              ),
          
              //SizedBox(height: .0),
          
              //title
              Text(
                "Only walks to the future",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25
                ) 
                ),
              
              SizedBox(height: 15,),
          
              //sub title
              Text(
                "Welcome to Nikelab",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal
                ),
                textAlign: TextAlign.center,
              ),
        
              SizedBox(height: 90,),
        
              //start button 
              GestureDetector(
                onTap: () => Navigator.push
                 (context,
                 MaterialPageRoute
                 (builder: (context) => HomePage())
                 ),
                child: Container(
                  decoration:BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      "Shop Now"
                      ,style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                                ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}