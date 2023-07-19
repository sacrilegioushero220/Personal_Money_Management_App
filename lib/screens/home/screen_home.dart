import 'package:flutter/material.dart';
import 'package:personal_money_management_app/screens/home/widgets/bottom_navigation.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: MoneyManagerBottomNavigation(),
      body: SafeArea(child: Text('Hello, World!')),
    );
  }
}
