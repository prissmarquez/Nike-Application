import 'package:flutter/material.dart';
import 'package:naiki/components/shoe_tile.dart';
import 'package:naiki/models/bag.dart';
import 'package:naiki/models/shoe.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

//add a shoe to bag
void addShoeToBag (Shoe shoe) {
  Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

  //alert the user, shoe successfully added
  showDialog(
  context: context, 
  builder: (context) => AlertDialog(
    title: Text('Shoe Added'),
    content: Text("Check your back"),
  )
  );
}

  @override
  Widget build(BuildContext context) {
    return Consumer <Cart>(builder:(context, value, child) => Column(
      children: [
        //search bar
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
           ),
          child: const Row(
            children: [
              Icon(Icons.search, color: Colors.black,
              ),
              SizedBox(width: 10,),
              Text (
                "Search",
                style: TextStyle(
                  color: Colors.black
                ),
              ),
            ],
          )
           
        ),
        //message and hot picks


        const SizedBox(height: 10,),

        //list of shoes for sales 
        
        Expanded(
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //get a shoe from the list
              Shoe shoe = value.getShoeList()[index];

               //return a shoe
              return ShoeTile (
                shoe: shoe ,
                onTap: () => addShoeToBag (shoe),
              );
            },
          ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
            child: Divider(
              color: Colors.white
            ),
          )
        ]
    ),
    );
  }
}