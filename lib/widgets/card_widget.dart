import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final String image;
  const CardWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    TextTheme textTheme = themeData.textTheme;
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 400,
      width: width - 100,
      decoration: fullOutLiner(themeData),
      child: Column(
        children: [
          Image.asset(image, width: width - 30, fit: BoxFit.fill, height: 180),
          Container(
            width: double.infinity,
            decoration: fullOutLiner(themeData),
            padding: const EdgeInsets.all(10),
            child: Text(
              "Flutter, Dart, Getx",
              style: textTheme.bodyMedium!.copyWith(
                color: themeData.disabledColor,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: fullOutLiner(themeData),
              padding: const EdgeInsets.all(10),
              child: Text(
                "Flutter, Dart, Getx",
                maxLines: 6,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium!.copyWith(
                  color: themeData.disabledColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  BoxDecoration fullOutLiner(ThemeData themeData) {
    return BoxDecoration(
      border: Border.all(width: 0.9, color: themeData.disabledColor),
    );
  }
}
