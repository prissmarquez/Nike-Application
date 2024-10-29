import 'package:flutter/material.dart';
import 'package:naiki/models/bag.dart';
import 'package:naiki/models/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({
    super.key,
    required this.shoe
    });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //remove item from bag
  void removeItemFromCart (){
    Provider.of<Cart>(context, listen: false).removeItemFromCart (widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: removeItemFromCart, 
          icon: Icon(Icons.delete)
          ) ,
      ),
    );
  }
}