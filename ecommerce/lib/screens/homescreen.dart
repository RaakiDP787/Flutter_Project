import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/custom_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Zero to Unicorn",
      ),
      bottomNavigationBar: CustomBottomBar(currentindex: currentindex),
    );
  }
}
