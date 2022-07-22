import 'package:flutter/material.dart';
import 'package:fl_components/Theme/app_theme.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy',
    'Contra'
  ];

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Tipo 2',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        physics: AppTheme.bouncing,
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(Icons.gamepad_outlined, color: AppTheme.primary),
          title: Text(options[i]),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colors.black,
          ),
          onTap: () {
            final game = options[i];
            debugPrint(game);
          },
        ),
        separatorBuilder: (_, __) => Container(
          width: double.infinity,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 10),
          color: Colors.black.withOpacity(0.1),
          // separatorBuilder: (context, index) => const Divider(),
        ),
      ),
    );
  }
}
