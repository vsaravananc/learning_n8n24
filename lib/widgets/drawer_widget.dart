import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:protfolio/widgets/keyboardshoutcut_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return KeyboardshoutcutWidget(
      onKey: (event) {
        if (event.isShiftPressed &&
            event.logicalKey == LogicalKeyboardKey.keyD &&
            event is RawKeyDownEvent) {
          Scaffold.of(context).closeDrawer();
        }
      },
      child: Container(
        color: Colors.blue,
        width: 250,
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text("data")],
        ),
      ),
    );
  }
}
