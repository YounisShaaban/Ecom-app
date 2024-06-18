import 'package:ecom_app/components/my_list_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //drawer header: logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              //shop title
              MyListTile(
                icon: Icons.home,
                text: 'المتجر',
                onTap: () {
                  //pop drawer first
                  Navigator.pop(context);

                  //then navigate tothe cart page
                  Navigator.pushNamed(context, '/shop_page');
                },
              ),

              //cart title
              MyListTile(
                icon: Icons.shopping_cart,
                text: 'العرية',
                onTap: () {
                  //pop drawer first
                  Navigator.pop(context);

                  //then navigate tothe cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),

          //exit shop title
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: MyListTile(
                icon: Icons.logout,
                text: 'تسجيل خروج',
                onTap: () => Navigator.pushNamedAndRemoveUntil(
                    context, '/intro_page', (route) => false)),
          ),
        ],
      ),
    );
  }
}
