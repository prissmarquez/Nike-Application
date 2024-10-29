import 'package:flutter/material.dart';
import 'package:naiki/components/cart_item.dart';
import 'package:naiki/models/bag.dart';
import 'package:naiki/models/shoe.dart';
import 'package:provider/provider.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer <Cart> (
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const Text(
              "My Bag",
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 24,
              ),
              ),

               const SizedBox( height: 20,),

               Expanded(
                child: ListView.builder(
                  itemCount:value.getShoeList(). length ,
                  itemBuilder: (context, index){
                  //get indivual shoe 
                  Shoe individualShoe = value.getShoeList()[index];
                  //return the cart item 
                  return CartItem(shoe: individualShoe,);
                 },
               ),
               )
          ],
        ),
      )
      );
  }
}