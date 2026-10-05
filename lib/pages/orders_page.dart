import 'package:flutter/material.dart';
import 'package:myshop/componets/app_drawer.dart';
import 'package:myshop/componets/order_widget.dart';
import 'package:myshop/models/order_list.dart';
import 'package:provider/provider.dart';

class OrdersPage extends StatelessWidget {
 const OrdersPage({Key?key}): super(key:key);

  @override
  Widget build(BuildContext context) {
    final OrderList orders =Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus pedidos'),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: orders.itemsCount,
        itemBuilder: (ctx,i)=> OrderWidget(order: orders.items[i]),
      )
    );
  }
}