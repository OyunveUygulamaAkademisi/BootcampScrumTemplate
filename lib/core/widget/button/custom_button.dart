import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final bool isExpand;
  final String? text;
  final Widget? child;
  const CustomButton({Key? key, this.isExpand = true, this.text, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isExpand ? SizedBox(
      width: MediaQuery.of(context).size.width,
      child: button,
    ) : button;
  }

  ElevatedButton get button => ElevatedButton(
      onPressed: () {},
      child: child ?? Text(text ?? ''),
      style: ButtonStyle(
          padding:
              MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 12)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)))));
}
