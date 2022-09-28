import 'package:flutter/material.dart';

Widget defaultButton({
  required double width,
  required Color backGround,
  required Function function,
  required String text,
  bool isUpper = true,
  double radius = 10,
  Builder? builder,
  Color colorText = Colors.black,
  double textSize =25,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: backGround,
        borderRadius: BorderRadius.circular(
          (radius),
        ),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: textSize,
            fontWeight: FontWeight.w400,
            color: colorText,
          ),
        ),
      ),
    );

Widget defaultTextForm({
  required TextEditingController controller,
  required TextInputType type,
  Function? onSubmit,
  Function? onChanged,
  Function? onTap,
  required Function validate,
  String? label,
  String? hint,
  required IconData prefix,
  IconData? suffix,
  bool isPassword = false,
  Function? suffixPressed,
  Color? colorIcon,
  Color? colorIcons,
  bool isClickable = true,
  Color? colorLabel,
  Color colorBorder = Colors.white,
  double radius = 10,
}) =>
    TextFormField(
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        labelStyle: TextStyle(
          fontSize: 20,
          color: colorLabel,
        ),
        hintStyle: TextStyle(
          fontSize: 18,
          color: colorLabel,
        ),
        suffixIcon: suffix != null
            ? IconButton(
            onPressed: () {
              suffixPressed!();
            },
            icon: Icon(
              suffix,
              color: colorIcons,
            ))
            : null,
        prefixIcon: Icon(
          prefix,
          color: colorIcon,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorder,
          ),
          borderRadius: BorderRadius.circular(
            (radius),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: colorBorder,
          ),
          borderRadius: BorderRadius.circular(
            (radius),
          ),
        ),
      ),
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: (value) {
        onSubmit!(value);
      },
      onChanged: (value) {
        onChanged!(value);
      },
      validator: (value) {
        return validate(value);
      },
      onTap: () {
        onTap!();
      },
      enabled: isClickable,
    );
