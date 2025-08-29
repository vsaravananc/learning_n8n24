import 'package:flutter/material.dart';
import 'package:protfolio/util/images_util.dart';
import 'package:protfolio/util/responsive_util.dart';

class QuatesWidget extends StatelessWidget {
  final String quate;
  const QuatesWidget({
    super.key,
    this.quate = 'First, solve the problem. Then, write the code.',
  });

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    TextTheme textTheme = themeData.textTheme;
    double width = MediaQuery.sizeOf(context).width;
    return SliverPadding(
      padding: const EdgeInsets.only(top: 50),
      sliver: SliverToBoxAdapter(
        child: Align(
          alignment: Alignment.center,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: ResponsiveUtil.isMobile(context: context)
                        ? EdgeInsets.symmetric(horizontal: width * 0.03)
                        : null,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
                    constraints: BoxConstraints(
                      minWidth: 300,
                      maxWidth: 600,
                      minHeight: 45,
                      maxHeight: ResponsiveUtil.isMobile(context: context)
                          ? 70
                          : 85,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.9,
                        color: themeData.disabledColor,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        quate,
                        style: textTheme.bodyMedium!.copyWith(
                          color: themeData.focusColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  Container(
                    margin: ResponsiveUtil.isMobile(context: context)
                        ? EdgeInsets.symmetric(horizontal: width * 0.03)
                        : null,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    constraints: BoxConstraints(
                      minWidth: 160,
                      maxWidth: 200,
                      minHeight: 45,
                      maxHeight: 50,
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 0.9,
                          color: themeData.disabledColor,
                        ),
                        left: BorderSide(
                          width: 0.9,
                          color: themeData.disabledColor,
                        ),
                        right: BorderSide(
                          width: 0.9,
                          color: themeData.disabledColor,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "-John Johnson",
                        style: textTheme.bodyMedium!.copyWith(
                          color: themeData.focusColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                top: -15,
                left: 20,
                child: Image.asset(ImagesUtil.leftsideQuate),
              ),
              Positioned(
                top: -15,
                right: 20,
                child: Image.asset(ImagesUtil.rightsideQuate),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
