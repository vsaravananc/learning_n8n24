import 'package:flutter/material.dart';
import 'package:protfolio/util/images_util.dart';

class ProfilestackWidget extends StatelessWidget {
  final bool isMobile;
  const ProfilestackWidget({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: isMobile ? 316 : 450,
          width: isMobile ? 290 : 450,

          child: Stack(
            clipBehavior: Clip.none,
            children: [
              SizedBox(height: double.infinity, width: double.infinity),
              Positioned(
                top: 30,
                left: -30,
                child: Image.asset(
                  ImagesUtil.cubeLogo,
                  color: Theme.of(context).primaryColor,
                  height: 150,
                  width: 150,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Image.asset(ImagesUtil.profile),
                ),
              ),
              Positioned(
                bottom: -40,
                right: -70,
                child: Image.asset(
                  ImagesUtil.donts5x5,
                  color: Theme.of(context).primaryColor,
                  height: 180,
                  width: 180,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          width: isMobile ? 290 : 450,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).disabledColor,
              width: 1,
            ),
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 2, right: 10),
                height: 16,
                width: 16,
                color: Theme.of(context).primaryColor,
              ),

              Flexible(
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Currently working on ',
                        style: Theme.of(context).textTheme.displayMedium!
                            .copyWith(
                              color: Theme.of(context).disabledColor,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      TextSpan(
                        text: "Portfolio",
                        style: Theme.of(context).textTheme.displayMedium!
                            .copyWith(
                              color: Theme.of(context).focusColor,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
