import 'package:flutter/material.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: const EdgeInsets.all(10),
        itemBuilder: (BuildContext, int) {
          return const Card(
            child: ListTile(
              leading: CircleAvatar(
                radius: 50,
                child: Text(
                  "12 \n Dec",
                  textAlign: TextAlign.center,
                ),
              ),
              title: Text("Rs 10000"),
              subtitle: Text("Travel"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => const SizedBox(
              height: 10,
            ),
        itemCount: 10);
  }
}
