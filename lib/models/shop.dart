import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // Poduct 1
  final List<Product> _shop = [
    Product(
        name: 'آيفون 15 برو ماكس ',
        price: 4495,
        description:
            ' كاميرا تليفوتوغرافية متطورة, USB-C منفذ , A17 يتميز بشريحة ',
        imagePath: 'assets/iPhone_15_Pro_Max_Natural_Titanium.png'),

    // Poduct 2

    Product(
        name: '  أبل فيجن برو ',
        price: 99.99,
        description:
            'نظارة الواقع المختلط المتطورة من أبل، تدمج المحتوى الرقمي مع العالم الفعلي لتجربة مذهلة',
        imagePath:
            'assets/Apple-WWDC23-Vision-Pro-with-battery-230605_big.jpg.large.png'),

    // Poduct 3

    Product(
        name: ' منتج 3 ',
        price: 99.99,
        description: ' ..الوصف',
        imagePath: 'assets/iPhone_15_Pro_Max_Natural_Titanium.png'),

    // Poduct 4

    Product(
        name: ' منتج 4 ',
        price: 99.99,
        description: '..الوصف',
        imagePath: 'assets/iPhone_15_Pro_Max_Natural_Titanium.png'),
  ];

  //user cart
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user list
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from the cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
