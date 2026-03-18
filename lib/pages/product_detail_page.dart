import 'package:flutter/material.dart';
import '../models/product.dart';
class ProductDetailPage extends StatelessWidget {

 
  const ProductDetailPage({
    super.key});

  @override
  Widget build(BuildContext context) {
     final Product product = ModalRoute.of(context)?.settings.arguments as Product; // para referencia o argumento que foi passado pelos argumentos (tem que usar? pq talvez settings pode ser nulo)
    return Scaffold(
      appBar: AppBar(
        title: Text('product.title'),
      ),

    );
  }
}