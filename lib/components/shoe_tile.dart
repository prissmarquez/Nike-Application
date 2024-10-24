import 'package:flutter/material.dart';
import 'package:naiki/models/shoe.dart';

class ShoeTile extends StatelessWidget {
 Shoe shoe;
 void Function()? onTap;
  ShoeTile ({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration (
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath)
            ),

          //description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              shoe.description,
              style: TextStyle(color: Colors.black, ),
              ),
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //shoe name
                    Text(shoe.name, style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15
                    ),),
            
                    SizedBox(height: 5,),
                    
                    //price
                    Text( shoe.price, style: TextStyle(
                      color: Colors.black
                    ),)
                  ],
                ),

                 //button to add to bag
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black, 
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12)
                          )
                      ),
                      child: Icon(Icons.add, color: Colors.white,),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}