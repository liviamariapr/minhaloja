import 'dart:math';
import 'package:flutter/material.dart';
import 'package:myshop/models/cart_item.dart';

import 'product.dart';

class Cart with ChangeNotifier {
  Map<String,CartItem> _items = {};

  Map<String,CartItem> get items {

    return {..._items};
  }


  void addItem(Product product){
if(_items.containsKey(product.id)){
  _items.update(
    product.id,
    (existinItem)=>CartItem(
      id:existinItem.id,
      productId: existinItem.productId,
      name: existinItem.name,
      quantity: existinItem.quantity +1,
      price: existinItem.price,
    ),
    );
} else{
_items.putIfAbsent(
  product.id,
  () => CartItem(
    id:Random().nextDouble().toString(),
    productId: product.id,
    name: product.name,
    quantity: 1,
    price: product.price,
  ),
);
  
}
notifyListeners();
}
  void removeItem (String productId){
    _items.remove(productId);
    notifyListeners();
  }
  int get itemsCount{
    return _items.length;
  }

  double  get totalAmount{
    double total = 0;
    _items.forEach((key,cartItem){
      total+=cartItem.price*cartItem.quantity;
    });
    return total;

  }
  void clear (){
    _items={};
    notifyListeners();
  }
}