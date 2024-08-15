import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  final IconData iconName;
  final String title;
  final Widget Function() onTap;
  const CustomListTile({super.key, required this.iconName, required this.title, required this.onTap});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
            leading: Icon(widget.iconName, color: Colors.white),
            title: Text(widget.title, style: TextStyle(color: Colors.white)),
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => widget.onTap()),
              );
            },
          );
  }
}