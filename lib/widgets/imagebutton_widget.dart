import 'package:flutter/material.dart';

class ImagebuttonWidget extends StatelessWidget {
  final String name;
  final Function()? ontap;
  final double height;
  final double width;
  final bool isPaddingRequried;
  final double padding;
  const ImagebuttonWidget({
    super.key,
    required this.name,
    this.ontap,
    this.height = 25,
    this.width = 25,
    this.isPaddingRequried = true,
    this.padding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: isPaddingRequried
            ? EdgeInsetsGeometry.all(padding)
            : const EdgeInsetsGeometry.all(0),
        child: Image.asset(name, height: height, width: width),
      ),
    );
  }
}
