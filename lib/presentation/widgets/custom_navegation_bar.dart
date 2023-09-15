import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/presentation/providers/custon_navigator_bar_provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final customNavegatorProvider = context.watch<CustomNavedatorBarProvider>();

    return BottomNavigationBar(
        currentIndex: customNavegatorProvider.currentIndex,
        onTap: (value) {
          customNavegatorProvider.setcurrentIndex = value;
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Maps'),
          BottomNavigationBarItem(
              icon: Icon(Icons.diamond_outlined), label: 'Direcciones')
        ]);
  }
}
