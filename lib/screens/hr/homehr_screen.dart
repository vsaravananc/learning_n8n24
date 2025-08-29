import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:protfolio/util/images_util.dart';
import 'package:protfolio/util/responsive_util.dart';
import 'package:protfolio/widgets/appbar_widget.dart';
import 'package:protfolio/widgets/card_widget.dart';
import 'package:protfolio/widgets/drawer_widget.dart';
import 'package:protfolio/widgets/firstframe_widget.dart';
import 'package:protfolio/widgets/profilestack_widget.dart';
import 'package:protfolio/widgets/quates_widget.dart';
import 'package:protfolio/widgets/segement_widget.dart';

class HomeHRScreen extends StatelessWidget {
  static MaterialPageRoute hrScreen(context) =>
      MaterialPageRoute(builder: (context) => HomeHRScreen());

  const HomeHRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveUtil.isMobile(context: context)
          ? AppbarMobileWidget()
          : null,
      drawer: DrawerWidget(),
      drawerDragStartBehavior: DragStartBehavior.start,
      drawerEnableOpenDragGesture: ResponsiveUtil.isMobile(context: context),
      body: CustomScrollView(
        slivers: [
          ResponsiveUtil.isMobile(context: context)
              ? FirstframeMobileWidget()
              : SliverToBoxAdapter(child: ProfilestackWidget(isMobile: false)),

          QuatesWidget(),
          SegementWidget(
            title: "projects",
            widget: CardWidget(image: ImagesUtil.bannerOne),
          ),
          SegementWidget(
            title: "skills",
            widget: CardWidget(image: ImagesUtil.bannerOne),
          ),
          SegementWidget(
            title: "about-me",
            widget: CardWidget(image: ImagesUtil.bannerOne),
          ),
          SegementWidget(
            title: "contacts",
            widget: CardWidget(image: ImagesUtil.bannerOne),
          ),
        ],
      ),
    );
  }
}
