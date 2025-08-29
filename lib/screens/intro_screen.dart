import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:protfolio/screens/developer/homedeveloper_screen.dart';
import 'package:protfolio/screens/hr/homehr_screen.dart';
import 'package:protfolio/statemanager/mousecursor_state.dart';
import 'package:protfolio/util/responsive_util.dart';
import 'package:protfolio/widgets/custombutton_widget.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveUtil.isMobile(context: context)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: buttonsHolder(context),
              ),
            )
          : Center(child: Wrap(children: buttonsHolder(context))),
    );
  }

  List<Widget> buttonsHolder(context) {
    return [
      BlocProvider(
        create: (context) => MousecursorCubit(),
        child: CustombuttonWidget(
          name: "Hr",
          ontap: () {
            Navigator.pushReplacement(context, HomeHRScreen.hrScreen(context));
          },
        ),
      ),
      BlocProvider(
        create: (context) => MousecursorCubit(),
        child: CustombuttonWidget(
          name: "Developer",
          ontap: () {
            Navigator.pushReplacement(
              context,
              HomedeveloperScreen.developerScreen(context),
            );
          },
        ),
      ),
    ];
  }
}
