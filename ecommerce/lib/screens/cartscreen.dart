import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_bottom_bar.dart';

class CartScreen extends StatefulWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int currentindex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Cart",
      ),
      bottomNavigationBar: CustomBottomBar(currentindex: currentindex),
    );
  }
}
