import 'package:flutter/material.dart';
import 'package:myshop/pages/counter_page.dart';
import 'package:myshop/pages/product_datail_page.dart';
import 'package:myshop/pages/products_overview_page.dart';
import 'package:myshop/providers/counter.dart';
import 'package:myshop/utils/app_route.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 206, 14, 8)),
        fontFamily: 'Anton',
      ),
      home:ProductsOverviewPage(),
      routes: {
        AppRoutes.PRODUCT_DETAIL: (ctx) => CounterPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
