import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String inputProperty;
  final Map<String, dynamic> inputValue;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    required this.obscureText,
    required this.inputProperty,
    required this.inputValue,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        inputValue[inputProperty] = int.parse(value);
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.isEmpty ? 'Ingrese un valor' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,

        // prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        icon: icon == null ? null : Icon(icon),
        // border: OutlineInputBorder(
        //     borderRadius:
        // BorderRadius.all(Radius.circular(100)))
      ),
    );
  }
}
