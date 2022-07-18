import 'package:flutter/material.dart';

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
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.gamepad_outlined),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            final game = options[index]; 
            print(game);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
        // separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
