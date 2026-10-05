import 'package:flutter/material.dart';
import 'package:myshop/models/cart.dart';
import 'package:myshop/models/product.dart';
import 'package:myshop/utils/app_route.dart';
import 'package:provider/provider.dart';

class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context,listen:false);
    return  ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,),
          onTap: (){
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },  
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: Consumer <Product>(
            builder: (ctx,product,_)=>
            IconButton(
            onPressed: () {
              product.toggleFavorite();
            },
            icon: Icon(product.isFavorite?Icons.favorite:Icons.favorite_border),
            color: Theme.of(context).colorScheme.primary,
          ),
          ),
          title: Text(
            product.name,
            textAlign: TextAlign.center),
          trailing: IconButton(
            onPressed: () {
              cart.addItem(product);
              
            },
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}