import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class InputWidget extends StatelessWidget {
  final IconData? icon;
  final String hint;
  final bool obscure;
  final TextInputType inputType;

  const InputWidget({
    this.icon,
    required this.hint,
    this.obscure = false,
    this.inputType = TextInputType.emailAddress,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var inputFormatters = <TextInputFormatter>[];
    if (!obscure) {
      inputFormatters.add(MaskTextInputFormatter(mask: '###.###.###-##'));
    } else {
      inputFormatters.add(FilteringTextInputFormatter.digitsOnly);
    }
    return TextField(
      keyboardType: inputType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        icon: Icon(icon, color: Color(0xFFFFFFFF)),
        hintText: hint,
        hintStyle: TextStyle(color: Color(0xFFFFFFFF)),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent),
        ),
      ),
      style: TextStyle(color: Color(0xFFFFFFFF)),
      obscureText: obscure,
    );
  }
}
