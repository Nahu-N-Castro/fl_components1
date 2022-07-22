import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Componentes en Flutter', textAlign: TextAlign.center),
        elevation: 0,
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          leading:
              Icon(AppRoutes.menuOptions[index].icon, color: Colors.redAccent),
          title: Text(AppRoutes.menuOptions[index].name),
          onTap: () {
            // final route = MaterialPageRoute(
            //     builder: (context) => const Listview1Screen());
            // Navigator.push(context, route);
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => Container(
          width: double.infinity,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 6),
          color: Colors.black.withOpacity(0.1),
        ),
        // separatorBuilder: (_, __) => const Divider(),
        itemCount: AppRoutes.menuOptions.length,
      ),
    );
  }
}
