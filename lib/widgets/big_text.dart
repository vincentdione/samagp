
import 'package:flutter/cupertino.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  TextAlign align;

   BigText({super.key,  this.color = const Color(0xFF332d2b),
      this.overflow = TextOverflow.ellipsis,
     this.size = 20,
     this.align = TextAlign.start,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
          text,
      maxLines: 1,
      overflow: overflow,
      textAlign: align,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400
      ),

    );
  }
}
