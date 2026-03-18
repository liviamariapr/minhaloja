import 'package:flutter/material.dart';
import 'pages/products_overview_page.dart';
import 'utils/app_routes.dart';
import 'pages/product_detail_page.dart';
import 'pages/counter_page.dart';
import '../providers/counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
        useMaterial3: false, // a app usa a versão antiga do flutter para rederizar os estilos dos componentes
          colorScheme: ColorScheme.light(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewPage(),
        routes: {
          AppRoutes.PRODUCT_DETAIL: (ctx) => CounterPage()
        },
        debugShowCheckedModeBanner: false, //tira a marcação do debug
      ),
    );
  }
}
