import 'package:flutter/material.dart';
import 'package:fl_components/Theme/app_theme.dart';

class ListviewBuilderScreen extends StatelessWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: ListView.builder(
            physics: AppTheme.bouncing,
            itemBuilder: (BuildContext context, int index) {
              return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${index + 1}'),
              );
            },
            itemCount: 15,
          ),
        ),
      ),
    );
  }
}
