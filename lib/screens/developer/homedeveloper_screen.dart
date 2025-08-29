import 'package:flutter/material.dart';
import 'package:protfolio/themes/colors_theme.dart';

class HomedeveloperScreen extends StatefulWidget {
  static MaterialPageRoute developerScreen(context) =>
      MaterialPageRoute(builder: (context) => HomedeveloperScreen());
  const HomedeveloperScreen({super.key});

  @override
  State<HomedeveloperScreen> createState() => _HomedeveloperScreenState();
}

class _HomedeveloperScreenState extends State<HomedeveloperScreen> {
  FocusNode focusNode = FocusNode();
  TextEditingController controller = TextEditingController();
  ScrollController scrollController = ScrollController();
  List<String> commands = [];
  List<String> output = [];

  void onSubmit(String s) {
    String command = s.trim();
    if (command == "clear") {
      commands.clear();
    } else {
      commands.add(command);
    }
    setState(() {});
    controller.clear();
    focusNode.requestFocus();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  void initState() {
    super.initState();
    (kIsWeb) {
      focusNode.requestFocus();
    };
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    TextTheme textTheme = theme.textTheme;
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          focusNode.requestFocus();
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.2),
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          decoration: BoxDecoration(color: theme.primaryColorDark),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to our website/terminal\n you can use this terminal to review profile.",
                      textAlign: TextAlign.center,
                      style: textTheme.displayMedium!.copyWith(
                        color: ColorsTheme.highlight,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, i) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "~\$/",
                              style: textTheme.displayMedium!.copyWith(
                                color: ColorsTheme.path,
                              ),
                            ),
                            TextSpan(
                              text: " ${commands[i]}",
                              style: textTheme.displayMedium!.copyWith(
                                color: ColorsTheme.command,
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 8),
                      Text(
                        "output",
                        style: textTheme.displayMedium!.copyWith(
                          color: ColorsTheme.output,
                        ),
                      ),
                    ],
                  ),
                  childCount: commands.length,
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.only(top: 8),
                sliver: SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        r"~$/ ",
                        style: textTheme.displayMedium!.copyWith(
                          color: ColorsTheme.path,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: controller,
                          focusNode: focusNode,
                          cursorColor: ColorsTheme.command,
                          cursorWidth: 10,
                          style: textTheme.displayMedium!.copyWith(
                            color: ColorsTheme.command,
                          ),
                          decoration: const InputDecoration(
                            isCollapsed: true,
                            border: InputBorder.none,
                          ),
                          onSubmitted: (v) => onSubmit(v),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



/**
 * 
 * list of commands going to use
 * 
 * ls
 * cd
 * cd ..
 * pwd
 * whoami
 * man
 * 
 * 
 */