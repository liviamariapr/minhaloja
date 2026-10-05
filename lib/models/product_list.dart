import 'package:flutter/material.dart';
import 'package:myshop/data/dummy_data.dart';
import 'package:myshop/models/product.dart';
class ProductList with ChangeNotifier{
  List<Product> _items = [
    Product(
      id: 'p1',
      name: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 29.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      name: 'Trousers',
      description: 'A nice pair of trousers.',
      price: 59.99,
      imageUrl:
          'https://thumb.wikimedia.org/wikipedia/commons/thumb/0/02/China%2C_Tang_dynasty_-_Prince%27s_trousers_and_lining_-_1996.2.2_-_Cleveland_Museum_of_Art.tif/lossy-page1-250px-China%2C_Tang_dynasty_-_Prince%27s_trousers_and_lining_-_1996.2.2_-_Cleveland_Museum_of_Art.tif.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
    ),
    Product(
      id: 'p3',
      name: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
    ),
    Product(
      id: 'p4',
      name: 'A Pan',
      description: 'Prepare any meal you want.',
      price: 49.99,
      imageUrl:
          'https://thumb.wikimedia.org/wikipedia/commons/thumb/2/28/Kupferpfanne_Sauteuse_%C3%A9vas%C3%A9e_konische_Kupfer-Kasserolle.jpg/330px-Kupferpfanne_Sauteuse_%C3%A9vas%C3%A9e_konische_Kupfer-Kasserolle.jpg?utm_source=pt.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',
    ),
  ];
 bool _showFavoriteOnly = false;

  //Return a clone of the list
  List<Product> get items => [..._items];
  List<Product> get favoriteItems => 
    _items.where((prod)=> prod.isFavorite).toList();
  


  void addProduct(Product product){
    _items.add(product);
    notifyListeners();
  }

}

//Return a clone of the list
  //List<Product> get items {
   // if (_showFavoriteOnly){
    //  return _items.where((prod)=>prod.isFavorite).toList();
   // }
   // return [..._items];
 // }

  ///void showFavoriteOnly (){
  //  _showFavoriteOnly = true;
  //  notifyListeners();
 // }
   //void showAll (){
    //_showFavoriteOnly = false;
    //notifyListeners();
//  }