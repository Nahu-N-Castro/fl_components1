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
        elevation: 0,
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile(
          leading: const Icon(
            Icons.gamepad_outlined,
            color: Colors.black,
          ),
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
