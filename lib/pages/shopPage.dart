import 'package:flutter/material.dart';
import 'package:naiki/components/shoe_tile.dart';
import 'package:naiki/models/shoe.dart';

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

        //bar of tenis

        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //create a shoe
              Shoe shoe = Shoe(name: "Nike Blazer Low", price: "250", imagePath: "lib/images/NikeBlazer.png", description: "Confía plenamente en el color con un par de Blazers de color rosa sólido.");
              return ShoeTile (
                shoe: shoe,
              );
            }
          )
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 25, right: 25),
            child: Divider(
              color: const Color.fromARGB(206, 222, 222, 222),
            ),
          )
        ]
    );
  }
}