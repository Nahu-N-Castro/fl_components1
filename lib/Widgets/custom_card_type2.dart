import 'package:fl_components/Theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shadowColor: AppTheme.primary.withOpacity(0.3),
      child: Column(
        children: [
          const FadeInImage(
            image: NetworkImage(
                'https://i.pinimg.com/564x/10/6e/65/106e6554e445f91c2847ef7daffb0b17.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
          Container(
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 20,
            ),
            child: const Text('Un Hermoso Paisaje'),
          ),
        ],
      ),
    );
  }
}
