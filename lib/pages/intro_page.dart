import 'package:ecom_app/components/my_button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),

            //title
            const Text(
              'متجر الكتروني',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            //subtitle
            Text(
              'منتجات عالية الجودة فقط ',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 25),

            //buttons
            MyButton(
              onTap: () => Navigator.pushNamed(context, '/shop_page'),
              child: Icon(Icons.arrow_forward),
            )
          ],
        ),
      ),
    );
  }
}
