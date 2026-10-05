import 'package:flutter/material.dart';
import 'package:myshop/componets/app_drawer.dart';
import 'package:myshop/componets/badgee3.dart';
import 'package:myshop/componets/product_grid.dart';
import 'package:myshop/models/cart.dart';
import 'package:myshop/utils/app_route.dart';
import 'package:provider/provider.dart';


enum FilterOptions{
  Favorite,
  All,
}
class ProductsOverviewPage extends StatefulWidget {
    
  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavoriteOnly=false;
  @override
  Widget build(BuildContext context) {
      
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
        actions:[
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) =>[
              PopupMenuItem(
                  child:Text('Somente Favoritos'),
                  value: FilterOptions.Favorite,
              ),
              PopupMenuItem(
                child: Text('Todos'),
                value:FilterOptions.All,
              ),
            ],
          onSelected: (FilterOptions selectedValue){
            setState(() {
               if(selectedValue == FilterOptions.Favorite){
                _showFavoriteOnly=true;
             
          }else{
                _showFavoriteOnly=false;
          }
        });
          }
          ),
          Consumer<Cart>(
            child: IconButton(
                onPressed : () {
                  Navigator.of(context).pushNamed(AppRoutes.CART);
                },
                icon: Icon(Icons.shopping_cart),
              ),
            builder: (ctx,cart,child) => Badgee3(
              value: cart.itemsCount.toString(),
              child: child!,
            ),
          ),
        ],
      ),
      body:ProductGrid(_showFavoriteOnly),
      drawer:AppDrawer(),
    );
  }
}



