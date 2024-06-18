import 'package:ecom_app/components/my_button.dart';
import 'package:ecom_app/components/my_drawer.dart';
import 'package:ecom_app/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecom_app/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

//remove item from cart method
  void removeItemFromCart(BuildContext context, Product product) {
    //show dialog box to ask user to confirm to remove from cart cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('إزالة هذا المنتج من سلة التسوق الخاصة بك؟'),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('لا'),
          ),

          //yes button

          MaterialButton(
            onPressed: () {
              //pop the dialog box
              Navigator.pop(context);

              //add to the cart

              context.read<Shop>().removeFromCart(product);
            },
            child: const Text('نعم'),
          )
        ],
      ),
    );
  }

  // user pressed the pay button
  void PayButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content:
            Text('user want to pay just connect it to the payment backend '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('سلة التسوق'),
      ),
      drawer: const MyDrawer(), // change this
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          //cart list
          Expanded(
            child: cart.isEmpty
                ? const Center(
                    child: Text(
                      '..العربة فارغة',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      //get individual item from cart
                      final item = cart[index];

                      //return as cart tile UI
                      return ListTile(
                          title: Text(item.name),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => removeItemFromCart(context, item),
                          ));
                    },
                  ),
          ),

          //pay button
          Padding(
            padding: const EdgeInsets.all(50),
            child: MyButton(
              onTap: () => PayButtonPressed(context),
              child: Text('ادفع الان '),
            ),
          )
        ],
      ),
    );
  }
}
