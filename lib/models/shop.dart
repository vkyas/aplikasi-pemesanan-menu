import 'package:flutter/material.dart';
import 'package:foodshop/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    // mie ayam
    Food(
        name: "Bakso",
        price: "12.000",
        imagePath: "lib/images/tmp/bks.png",
        rating: "4.6"),
    // sate
    Food(
        name: "Mie Ayam",
        price: "14.000",
        imagePath: "lib/images/tmp/mieayam.png",
        rating: "4.3"),

    Food(
        name: "Ayam Geprek",
        price: "11.000",
        imagePath: "lib/images/tmp/ayamgeprek.png",
        rating: "4.2"),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart; 

  // add to cart
  void addToCart(Food foodItem, int quantitiy) {
    for(int i = 0; i < quantitiy; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}