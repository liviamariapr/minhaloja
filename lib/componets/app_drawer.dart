import 'package:flutter/material.dart';
import 'package:myshop/utils/app_route.dart';

class  AppDrawer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text('Bem vindo Usuario!'),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Loja'),
            onTap: () { Navigator.of(context).pushReplacementNamed(
              AppRoutes.HOME,
            );
            },
          ),
           Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Pedidos'),
            onTap: () { Navigator.of(context).pushReplacementNamed(
              AppRoutes.ORDERS,
            );
            },
          ),
        ],
      ),
    );
  }
}