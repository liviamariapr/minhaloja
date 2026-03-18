import 'package:flutter/material.dart';
import '../models/product.dart';
import '../pages/product_detail_page.dart';
import '../utils/app_routes.dart';
class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({
    Key? key,
    required this.product,
    }): super (key : key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10), //deixa a borda arredondada nas pontas do widget atraves do corte
      child: GridTile( //mostra uma imagem e depois a forma como ela pode se encaixar
       child: GestureDetector(
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,//para ajustar o tamanho da imagem
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },
       ),
        footer: GridTileBar(// "cardzinho" com cor e nome do produto e os icone
          backgroundColor: Colors.black54,
          leading: IconButton( //define o que ta no inicio desse componente
            onPressed: (){},
            icon: Icon(Icons.favorite),
            color: Theme.of(context).colorScheme.secondary, // pega a cor que foi definida como secundaria no main
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center),//diz orientação do texto
          trailing: IconButton( // parte final do "cardzinho"
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).colorScheme.secondary, 
          ),
        ),  
      ),
    );
  }
}