// import 'package:flutter/material.dart';
// import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
// import 'shop_page.dart';
// import 'cart_page.dart';

// class HiddenDrawer extends StatefulWidget {
//   const HiddenDrawer({super.key});
//   @override
//   _HiddenDrawerState createState() => _HiddenDrawerState();
// }

// class _HiddenDrawerState extends State<HiddenDrawer> {
//   late List<ScreenHiddenDrawer> _pages;

//   @override
//   void initState() {
//     super.initState();
//     _pages = [
//       ScreenHiddenDrawer(
//         new ItemHiddenMenu(
//           name: "المتجر",
//           baseStyle:
//               TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 25.0),
//           colorLineSelected: Colors.teal,
//           selectedStyle: TextStyle(color: Colors.teal),
//         ),
//         ShopPage(),
//       ),
//       ScreenHiddenDrawer(
//         new ItemHiddenMenu(
//           name: "السلة",
//           baseStyle:
//               TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 25.0),
//           colorLineSelected: Colors.orange,
//           selectedStyle: TextStyle(color: Colors.orange),
//         ),
//         CartPage(),
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return HiddenDrawerMenu(
//       backgroundColorMenu: Theme.of(context).colorScheme.background,
//       screens: _pages,
//     );
//   }
// }
