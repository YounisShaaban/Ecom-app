import 'package:ecom_app/components/my_drawer.dart';
import 'package:ecom_app/components/my_product_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecom_app/models/shop.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('المتجر'),
          actions: [
            //go to cart button
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: const Icon(Icons.shopping_basket_outlined),
            ),
          ],
        ),
        drawer: MyDrawer(), //change this
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(height: 25),
            //shop subtitle
            Center(
              child: Text(
                'اختر من قائمة مختارة من المنتجات المتميزة',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
            ),

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  // get each indicidual product form shop
                  final product = products[index];

                  //return as a product tile UI
                  return MyProductTile(product: product);
                },
              ),
            ),
          ],
        ));
  }
}
