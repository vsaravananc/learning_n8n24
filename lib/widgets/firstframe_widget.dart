import 'package:flutter/material.dart';
import 'package:protfolio/util/responsive_util.dart';
import 'package:protfolio/widgets/profilestack_widget.dart';

class FirstframeMobileWidget extends StatelessWidget {
  const FirstframeMobileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveUtil.deviceWidth(context: context) * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: ResponsiveUtil.deviceWidth(context: context) * 0.1,
            ),
            RichText(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Saravanan is a ",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).focusColor,
                    ),
                  ),
                  TextSpan(
                    text: "Flutter ",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  TextSpan(
                    text: "and ",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).focusColor,
                    ),
                  ),
                  TextSpan(
                    text: "Android developer",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: ResponsiveUtil.deviceWidth(context: context) * 0.04,
            ),
            Text(
              'I build responsive and creative mobile applications using Flutter and native Android technologies',
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: Theme.of(context).disabledColor,
                fontWeight: FontWeight.normal,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: ResponsiveUtil.deviceWidth(context: context) * 0.05,
            ),
            Align(
              alignment: Alignment.center,
              child: ProfilestackWidget(isMobile: true),
            ),
          ],
        ),
      ),
    );
  }
}
