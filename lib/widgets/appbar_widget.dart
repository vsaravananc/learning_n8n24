import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:protfolio/util/images_util.dart';
import 'package:protfolio/widgets/imagebutton_widget.dart';
import 'package:protfolio/widgets/keyboardshoutcut_widget.dart';

class AppbarMobileWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final Size size;
  const AppbarMobileWidget({
    super.key,
    this.size = const Size(double.infinity, 45),
  });

  @override
  Size get preferredSize => size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      elevation: 0,
      surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
      leading: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              left: 11,
              bottom: 12,
              right: 5,
            ),
            child: Image.asset(
              ImagesUtil.logo,
              fit: BoxFit.contain,
              color: Theme.of(context).focusColor,
            ),
          ),
          Text(
            "Saravanan",
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).focusColor,
            ),
          ),
        ],
      ),
      leadingWidth: 150,
      actions: [
        KeyboardshoutcutWidget(
          onKey: (event) {
            if (event.isShiftPressed &&
                event.logicalKey == LogicalKeyboardKey.keyD &&
                event is RawKeyDownEvent) {
              Scaffold.of(context).openDrawer();
            }
          },
          child: Tooltip(
            mouseCursor: SystemMouseCursors.click,
            message: "Menu (shift + D)",
            verticalOffset: 10,
            child: ImagebuttonWidget(
              name: ImagesUtil.menu,
              ontap: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
        ),
      ],
    );
  }
}
