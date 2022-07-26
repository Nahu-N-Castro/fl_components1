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
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) => debugPrint('value:$value'),
                validator: (value) {
                  if (value == null) return 'Campo obligatorio';
                  return value.length < 3 ? 'Mínimo 3 caracteres' : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  helperText: 'Solo letras',
                  // counterText: '3 Caracteres',
                  // suffixIcon: Icon(Icons.group_outlined, color: Colors.red),
                  prefixIcon: const Icon(Icons.person, color: Colors.red),
                  icon: const Icon(Icons.assignment_ind_outlined),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
