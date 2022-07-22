import 'package:flutter/material.dart';

import '../Theme/app_theme.dart';

class Listview1Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy'
  ];

  const Listview1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Tipo 1',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        physics: AppTheme.bouncing,
        children: [
          ...options
              .map<Widget>(
                (game) => ListTile(
                  title: Text(game),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined),
                ),
              )
              .toList(),
          Divider(),
        ],
      ),
    );
  }
}
