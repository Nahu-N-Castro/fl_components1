import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? icon;
  final IconData? prefixIcon;
  final Color? color;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.icon,
    this.prefixIcon,
    this.color,
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
      decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          helperText: helperText,
          // counterText: '3 Caracteres',
          // suffixIcon: Icon(Icons.group_outlined, color: Colors.red),
          prefixIcon: prefixIcon == null ? null : Icon(prefixIcon),
          icon: icon == null ? null : Icon(icon, color: color)
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
