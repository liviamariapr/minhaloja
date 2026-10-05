import 'package:flutter/material.dart';
import 'package:myshop/models/cart.dart';
import 'package:myshop/models/order_list.dart';
import 'package:myshop/models/product_list.dart';
import 'package:myshop/pages/cart_page.dart';
import 'package:myshop/pages/counter_page.dart';
import 'package:myshop/pages/orders_page.dart';
import 'package:myshop/pages/product_datail_page.dart';
import 'package:myshop/pages/products_overview_page.dart';
import 'package:myshop/utils/app_route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        ChangeNotifierProvider(
          create: (_) =>ProductList(),
        ),
        ChangeNotifierProvider(
          create: (_) =>Cart(),
        ),
        ChangeNotifierProvider(
          create: (_) =>OrderList(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: .fromSeed(
            seedColor: const Color.fromARGB(255, 206, 14, 8),
          ),
          fontFamily: 'Anton',
        ),
    
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => ProductDetailPage(),
          AppRoutes.CART: (ctx)=> CartPage(),
           AppRoutes.ORDERS: (ctx)=> OrdersPage(),
          AppRoutes.HOME: (ctx)=> ProductsOverviewPage(),
          },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
