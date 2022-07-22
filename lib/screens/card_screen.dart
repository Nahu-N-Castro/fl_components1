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
          CustomCardType2(),
          SizedBox(height: 16),
          CustomCardType2(),
          SizedBox(height: 16),
          CustomCardType2(),
          SizedBox(height: 16),
          CustomCardType2(),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
