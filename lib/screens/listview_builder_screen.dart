import 'package:flutter/material.dart';
import 'package:fl_components/Theme/app_theme.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    scrollController.addListener(
      () {
        // print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
        if ((scrollController.position.pixels + 500) >=
            scrollController.position.maxScrollExtent) {
          add10();
        }
      },
    );
  }

  void add10() {
    final lastId = imageIds.last;
    imageIds.addAll(
      List.generate(10, (i) => lastId + i + 1),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: ListView.builder(
            controller: scrollController,
            itemCount: imageIds.length,
            physics: AppTheme.bouncing,
            itemBuilder: (BuildContext context, int index) {
              return FadeInImage(
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
                placeholder: const AssetImage('assets/jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300?image=${imageIds[index]}'),
              );
            },
          ),
        ),
      ),
    );
  }
}
