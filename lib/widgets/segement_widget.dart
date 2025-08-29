import 'package:flutter/material.dart';

class SegementWidget extends StatelessWidget {
  final String title;
  final bool nav;
  final Widget widget;
  const SegementWidget({
    super.key,
    required this.title,
    this.nav = true,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    TextTheme textTheme = themeData.textTheme;
    double width = MediaQuery.sizeOf(context).width;
    return SliverPadding(
      padding: const EdgeInsets.only(top: 50),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.03),
              child: titleContent(themeData, width),
            ),
            const SizedBox(height: 20),
            widget,
          ],
        ),
      ),
    );
  }

  Widget titleContent(ThemeData themeData, double width) {
    TextTheme textTheme = themeData.textTheme;
    return Row(
      children: [
        hashLetter(textTheme, themeData),
        const SizedBox(width: 3),
        titleOfSegement(textTheme, themeData, title),
        const SizedBox(width: 2),
        Expanded(
          child: Container(
            height: 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  themeData.primaryColor,
                  themeData.primaryColor.withOpacity(0.9),
                  Colors.transparent,
                ],
              ),
            ),
          ),
        ),
        const SizedBox(width: 2),
        nav ? navTo(textTheme, themeData) : const SizedBox(),
      ],
    );
  }

  Widget hashLetter(TextTheme textTheme, ThemeData themeData) {
    return Text(
      "#",
      style: textTheme.titleLarge!.copyWith(
        fontSize: 21,
        fontWeight: FontWeight.bold,
        color: themeData.primaryColor,
      ),
    );
  }

  Widget titleOfSegement(
    TextTheme textTheme,
    ThemeData themeData,
    String title,
  ) {
    return Text(
      title,
      style: textTheme.titleLarge!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: themeData.focusColor,
      ),
    );
  }

  Widget navTo(TextTheme textTheme, ThemeData themeData) {
    return Row(
      children: [
        Text(
          "View all",
          style: textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.normal,
            color: themeData.focusColor,
          ),
        ),
        const SizedBox(width: 2),
        Text(
          "~~>",
          style: textTheme.displayMedium!.copyWith(
            fontWeight: FontWeight.normal,
            color: themeData.focusColor,
          ),
        ),
      ],
    );
  }
}
