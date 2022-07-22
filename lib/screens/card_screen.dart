import 'package:flutter/material.dart';

import 'package:fl_components/Theme/app_theme.dart';
import '../Widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Card',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: ListView(
        physics: AppTheme.bouncing,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        children: const [
          CustomCardType1(),
          SizedBox(height: 16),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/564x/10/6e/65/106e6554e445f91c2847ef7daffb0b17.jpg',
            textImage: 'imagen 1',
          ),
          SizedBox(height: 16),
          CustomCardType2(
            imageUrl:
                'https://i.pinimg.com/564x/a2/42/4c/a2424c1182e906988b07b40c5a2e3de8.jpg',
          ),
          SizedBox(height: 16),
          CustomCardType2(
            imageUrl:
                'https://images.hdqwalls.com/wallpapers/mountains-sky-landscape-minimal-4k-ea.jpg',
            textImage: ('imagen 3'),
          ),
          SizedBox(height: 16),
          CustomCardType2(
            imageUrl:
                'https://images.wallpapersden.com/image/download/cool-landscape-night-minimal-art_bGxna2aUmZqaraWkpJRobWllrWdma2U.jpg',
            textImage: 'imagen4',
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
