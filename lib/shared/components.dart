import 'package:flutter/material.dart';

Widget defaultFormFieldo({
  required TextEditingController control,
  Function? onsubmitt,
  Function? onchange,
  required String label,
  required String hint,
  required IconData? prefix,
  required TextInputType? type,
  bool isPassword = false,
  IconData? suffix,
  Function? suffixpres,
  Function? ontap,
}) =>
    TextFormField(
      controller: control,
      onFieldSubmitted: (value) {
        onsubmitt!(value);
      },
      onChanged: (value) {
        onchange!(value);
      },
      keyboardType: type,
      onTap: () {
        ontap!();
      },
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText:hint ,
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
            onPressed: () {
              suffixpres!();
            },
            icon: Icon(suffix))
            : null,
        border:OutlineInputBorder(borderRadius:BorderRadius.circular(40.0)),
      ),
    );

Widget defaultButton({
  double? width = double.infinity,
  Color? background = Colors.deepOrange,
  Function? function,
  String? text,
  bool isUpper = true,
  double radius = 40.0,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      width: width,
      child: MaterialButton(
        onPressed: () {
          function!();
        },
        child: Text(
          isUpper ? text!.toUpperCase() : text!,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
