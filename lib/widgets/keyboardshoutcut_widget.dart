import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class KeyboardshoutcutWidget extends StatefulWidget {
  final Widget child;
  final Function(RawKeyEvent)? onKey;
  const KeyboardshoutcutWidget({
    super.key,
    required this.child,
    required this.onKey,
  });

  @override
  State<KeyboardshoutcutWidget> createState() => _KeyboardshoutcutWidgetState();
}

class _KeyboardshoutcutWidgetState extends State<KeyboardshoutcutWidget> {
 late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    if (kIsWeb) {
      _focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: kIsWeb,
      focusNode: _focusNode,
      onKey: widget.onKey,
      child: widget.child,
    );
  }
}
