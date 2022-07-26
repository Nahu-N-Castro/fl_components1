import 'package:flutter/material.dart';

import '../Widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'name': 'Nahu',
      'last_name': 'Castro',
      'email': 'nahu@google.com',
      'password': '123456',
      'role': 'Admin  ',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('TextInputs & TextFields'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Su Nombre',
                  icon: Icons.person_outline,
                  color: Colors.redAccent,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Apellido',
                  hintText: 'Su Apellido',
                  icon: Icons.person_add_outlined,
                  color: Colors.redAccent,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Email',
                  hintText: 'Su Email',
                  icon: Icons.email_outlined,
                  color: Colors.redAccent,
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                const CustomInputField(
                  labelText: 'Password',
                  hintText: 'Su Password',
                  icon: Icons.lock_outline,
                  color: Colors.redAccent,
                  inputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      debugPrint('formulario invalido');
                      return;
                    }
                    print(formValues);
                  },
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text('Enviar'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
