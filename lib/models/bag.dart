import 'package:flutter/material.dart';
import 'package:naiki/models/shoe.dart';

class Cart extends ChangeNotifier{
  //List of shoes for sale 
  List <Shoe> shoeShop = [
    Shoe(
      name: "Nike Blazer Low", 
      price: "1919 MXN", 
      imagePath: "lib/images/NikeBlazer.png", 
      description: "Confía plenamente en el color con un par de Blazers de color rosa sólido. El tono pastel crea un diseño monocromático atractivo pero sencillo. Versátil, con un cuello de corte low, este calzado combina con numerosos atuendos."),

    Shoe(
      name: "Nike Air Force 1 '07", 
      price: "1819 MXN", 
      imagePath: "lib/images/NikeAirForce.png", 
      description: "El fulgor vive en el Nike Air Force 1 '07, el modelo icónico de básquetbol que da un toque novedoso a las características más recordadas: revestimientos con costuras duraderas, acabados impecables y la cantidad perfecta de destellos para que brilles."),

    Shoe(
      name: "Nike Pegasus Trail", 
      price: "3099 MXN", 
      imagePath: "lib/images/NikePegasusTrail.png", 
      description: "Confía plenamente en el color con un par de Blazers de color rosa sólido. El tono pastel crea un diseño monocromático atractivo pero sencillo. Versátil, con un cuello de corte low, este calzado combina con numerosos atuendos."),
    
    Shoe(
      name: "Nike Air Max Dn", 
      price: "3799 MXN", 
      imagePath: "lib/images/NikeAirMax.png", 
      description: "Te presentamos la nueva generación de tecnología Air. Los Air Max Dn cuentan con nuestro sistema de unidades Dynamic Air de tubos de presión dual, lo que crea una sensación reactiva en cada pisada. "),
    
    Shoe(
      name: "Nike Zoom Vomero 5", 
      price: "3329 MXN", 
      imagePath: "lib/images/NikeZoomVomero.png", 
      description: "Forja un nuevo camino con el Zoom Vomero 5: tu favorito por su diseño complejo, profundo y fácil de combinar."),

  ];
  //list of items in user cart
  List <Shoe> userCart = [];

  //get cart
  List <Shoe> getShoeList() {
    return shoeShop;
  }
  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}