import 'package:flutter/material.dart';

class CustomBack extends StatefulWidget implements  PreferredSizeWidget {
  const CustomBack({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  
  @override
  State<CustomBack> createState() => _CustomBackState();
}

class _CustomBackState extends State<CustomBack> {
  @override
  Widget build(BuildContext context) {
    return
      AppBar(
        leading: IconButton(
          color: Colors.white,
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      );
  }

}
