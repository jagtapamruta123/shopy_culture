import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  String labelText;
  String hintText;
  // TextInputType keyBoardType;
  Widget suffix;
  Widget prefix;
  bool enable;
  int lines;
  Function onTAP;
  InputBorder border;
  TextInputType inputType;
  TextEditingController controller;
  TextAlign align;
  InputBorder inputBorder;
  bool obscureText;
  Function onChanged;
  TextInputAction action;
  bool filled;
  EdgeInsetsGeometry padding;
  bool isDense;
  double hintFontSize;
  List<TextInputFormatter> inputTextFormatter;
  final FormFieldValidator<String> validator;

  CustomTextFormFieldWidget({
    this.hintText = '',
    //  this.keyBoardType,
    this.isDense = false,
    this.labelText = '',
    this.hintFontSize = 12,
    this.suffix,
    this.validator,
    this.prefix,
    this.inputType,
    this.inputTextFormatter,
    this.border,
    this.lines = 1,
    this.enable = true,
    this.controller,
    this.onTAP,
    this.filled = true,
    this.padding,
    this.onChanged,
    this.action,
    this.obscureText = false,
    this.inputBorder = InputBorder.none,
    this.align = TextAlign.start,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(28),
      // ),
      child: TextFormField(
        //  cursorHeight: 3,
        validator: validator,
        obscureText: obscureText,

        onChanged: onChanged,
        onTap: onTAP,
        maxLines: lines,
        textAlign: align,
        inputFormatters: inputTextFormatter,
        controller: controller,
        cursorColor: Colors.black,
        enabled: enable,

        textInputAction: action,
        enableInteractiveSelection: false,
        textDirection: TextDirection.ltr,
        autofocus: true,
        style: TextStyle(
          fontSize: 16,
        ),

        decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: prefix,
          filled: filled,
          border: border,
          // errorText: '',
          // errorStyle: TextStyle(
          //   height: 0,
          // ),
          isDense: isDense,
          contentPadding: padding,
          enabledBorder: inputBorder,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.black54,
          ),
          hintStyle: TextStyle(
            fontSize: hintFontSize,
          ),
          focusColor: Colors.black,
          hintText: hintText,
        ),
        keyboardType: inputType,
      ),
    );
  }
}
