import 'package:flutter/material.dart';
import 'package:sama_gp/utils/colors.dart';

class MyButton extends StatefulWidget {
  final Function()? onTap;
  final Widget? child;
  final Color? color;

  const MyButton({Key? key, required this.onTap, this.child,this.color}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!isLoading) {
          setState(() {
            isLoading = true;
          });
          await widget.onTap?.call();
          setState(() {
            isLoading = false;
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: widget.color ?? Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
        child: isLoading
            ? CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
        )
            : widget.child ?? const Center(
          child: Text(
            "Connexion",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
//
// class MyButton extends StatelessWidget {
//   final Function()? onTap;
//   final Widget? child;
//
//   const MyButton({Key? key, required this.onTap, this.child}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.all(25),
//         margin: const EdgeInsets.symmetric(horizontal: 25),
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(8),
//         ),
//         child: child ?? const Center(
//           child: Text(
//             "Connexion",
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
