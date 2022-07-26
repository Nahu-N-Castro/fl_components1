import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextInputs & TextFields'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              TextFormField(
                autofocus: true,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) => debugPrint('value:$value'),
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  prefixIcon: Icon(Icons.person, color: Colors.red),
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
