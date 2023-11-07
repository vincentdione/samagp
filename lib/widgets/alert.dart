import 'package:flutter/material.dart';


class AlertWidget extends StatefulWidget {
  final String title;
  final String content;
  final String? textButton;
  final Color? color;
  final Icon? icon;

  const AlertWidget({Key? key, required this.title, required this.content,this.color,this.textButton,this.icon})
      : super(key: key);

  @override
  State<AlertWidget> createState() => _AlertWidgetState();
}

class _AlertWidgetState extends State<AlertWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Row(
          children: [
            if (widget.icon != null) widget.icon!,
            Text(widget.title),
          ],
        ),
        content: Text(widget.content),
        actions: [
        TextButton(
          child: Text(widget.textButton ?? 'OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );;
  }
}
