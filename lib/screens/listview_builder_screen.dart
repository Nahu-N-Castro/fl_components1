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
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(
      () {
        // print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
        if ((scrollController.position.pixels + 500) >=
            scrollController.position.maxScrollExtent) {
          // add10();
          fetchData();
        }
      },
    );
  }

  Future fetchData() async {
    if (isLoading) return;
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    add10();

    setState(() {
      isLoading = false;
    });
    if (scrollController.position.pixels + 100 <=
        scrollController.position.maxScrollExtent) return;

    scrollController.animateTo(
      scrollController.position.pixels + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void add10() {
    final lastId = imageIds.last;
    imageIds.addAll(
      List.generate(10, (i) => lastId + i + 1),
    );
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
    final lastId = imageIds.last;
    imageIds.clear();
    imageIds.add(lastId + 1);
    add10();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: AppTheme.primary,
                backgroundColor: Colors.white.withOpacity(0.1),
                onRefresh: onRefresh,
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
              if (isLoading)
                Positioned(
                  bottom: 40,
                  left: size.width * 0.5 - 30,
                  child: const _LoadingIcon(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
