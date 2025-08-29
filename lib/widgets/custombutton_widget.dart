import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protfolio/statemanager/mousecursor_state.dart';
import 'package:protfolio/util/responsive_util.dart';

class CustombuttonWidget extends StatelessWidget {
  final String name;
  final Function()? ontap;
  final bool isPadding;
  final double horizontal, vertical;
  const CustombuttonWidget({
    super.key,
    required this.name,
    required this.ontap,
    this.isPadding = true,
    this.horizontal = 4,
    this.vertical = 4,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MousecursorCubit, bool>(
      builder: (context, state) {
        return MouseRegion(
          onEnter: (event) => context.read<MousecursorCubit>().onEntery(),
          onExit: (event) => context.read<MousecursorCubit>().onExit(),
          cursor: SystemMouseCursors.click,
          child: Padding(
            padding: isPadding
                ? EdgeInsets.symmetric(
                    horizontal: horizontal,
                    vertical: vertical,
                  )
                : const EdgeInsets.all(0),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Theme.of(context).focusColor.withOpacity(0.6),
                onTap: ontap,
                child: Container(
                  height: ResponsiveUtil.isMobile(context: context) ? 45 : 55,
                  width: ResponsiveUtil.isMobile(context: context)
                      ? MediaQuery.sizeOf(context).width / 1.2
                      : 300,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.9,
                      color: state
                          ? Theme.of(context).focusColor
                          : Theme.of(context).disabledColor,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.normal,
                        color: state
                            ? Theme.of(context).focusColor
                            : Theme.of(context).disabledColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
