import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: false,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) => debugPrint('value:$value'),
      validator: (value) {
        if (value == null) return 'Campo obligatorio';
        return value.length < 3 ? 'Mínimo 3 caracteres' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        labelText: 'Nombre',
        hintText: 'Ingrese su nombre',
        helperText: 'Solo letras',
        // counterText: '3 Caracteres',
        // suffixIcon: Icon(Icons.group_outlined, color: Colors.red),
        prefixIcon: Icon(Icons.person, color: Colors.red),
        // icon: Icon(Icons.assignment_ind_outlined, color: Colors.red),
        // focusedBorder: OutlineInputBorder(
        //   borderSide: const BorderSide(color: Colors.red),
        //   borderRadius: BorderRadius.circular(10),
        // ),
        // border: const OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(10),
        //     topRight: Radius.circular(10),
        //   ),
        // ),
      ),
    );
  }
}
