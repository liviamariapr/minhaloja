import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/product.dart';
import '../components/product_item.dart';
class ProductsOverviewPage extends StatelessWidget {
  
  final List<Product> loadedProducts = dummyProducts;
  ProductsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'), // titulo na parte de cima da tela
      ),
      body: Padding( // espaçamento para nao ficar colado na borda
        padding: const EdgeInsets.all(10),
        child: GridView.builder( 
          itemCount: loadedProducts.length, // define a quantidade de itens que serão mostrados
          itemBuilder: (ctx, i) => ProductItem(product: loadedProducts[i]), //diz como vai ser construido cada elemento da gridview
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(  //area que pode ser rolavel 
            crossAxisCount: 2, // mostra dois elementos em cada linha
            childAspectRatio: 3/2, // relação entre altura e largura
            crossAxisSpacing: 10, //espaçamento no eixo cruzado
            mainAxisSpacing: 10, // espaçamento no eixo principal
            ), 
        ),
      )
    );
  }
}