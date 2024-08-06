import 'package:flutter/material.dart';
import 'package:todo_list/constants/constants.dart';

class CustomButton extends StatefulWidget {
  final double width;
  final double height;
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.height, required this.width, required this.text, required this.onPressed});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {           
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: secondaryColor,
                      minimumSize: Size(widget.width, widget.height),
                      shape: LinearBorder()
                    ),
                    onPressed: widget.onPressed,
                    child: Text(
                      widget.text,
                      style: TextStyle(color: Colors.white,fontSize: 16),
                    ),
                  );
  }
}