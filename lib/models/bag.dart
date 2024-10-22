import 'package:naiki/models/shoe.dart';

class Cart {
  //List of shoes for sale 
  List <Shoe> shopShop = [
    Shoe(
      name: name, 
      price: price, 
      imagePath: imagePath, 
      description: description)
  ];
  //list of items in user cart
  List <Shoe> userCart = [];

  //get cart
  List <Shoe> getShoeList() {
    return shopShop;
  }
  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }
  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}