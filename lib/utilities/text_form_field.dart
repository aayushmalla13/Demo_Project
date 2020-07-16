import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;

class MyTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;
  final TextInputType type;

  MyTextFormField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.type,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15.0),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: hintText,
              contentPadding: EdgeInsets.all(15.0),
              border: InputBorder.none,
              filled: true,
              fillColor: Colors.grey[400]),
          validator: validator,
          onSaved: onSaved,
          keyboardType: type,
        ));
  }
}
