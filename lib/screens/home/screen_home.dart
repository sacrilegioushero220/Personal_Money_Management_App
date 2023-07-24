import 'package:flutter/material.dart';
import 'package:personal_money_management_app/screens/category/screen_category.dart';
import 'package:personal_money_management_app/screens/home/widgets/bottom_navigation.dart';

import '../transactions/screen_transactions.dart';

class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});
  final _pages = [const ScreenTransactions(), const ScreenCategory()];
  static ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Money Manager")),
        ),
        bottomNavigationBar: const MoneyManagerBottomNavigation(),
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: selectedIndexNotifier,
            builder: (BuildContext ctx, int updtaedIndex, _) {
              return _pages[updtaedIndex];
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (selectedIndexNotifier.value == 0) {
              print("Add transactions");
            } else {
              print("Add Category");
            }
          },
          child: const Icon(Icons.add),
        ));
  }
}
