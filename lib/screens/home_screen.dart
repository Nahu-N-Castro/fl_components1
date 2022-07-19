import 'package:flutter/material.dart';
import 'package:fl_components/screens/screens.dart';

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
                leading: const Icon(Icons.access_time_filled_outlined),
                title: const Text('Nombre de Ruta'),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const Listview1Screen());
                  // Navigator.push(context, route);
                  Navigator.pushNamed(context, 'card2');
                },
              ),
          separatorBuilder: (_, __) => Container(
                width: double.infinity,
                height: 1,
                margin: const EdgeInsets.symmetric(vertical: 6),
                color: Colors.black.withOpacity(0.1),
              ),
          // separatorBuilder: (_, __) => const Divider(),
          itemCount: 10),
    );
  }
}
