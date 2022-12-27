import 'package:flutter/material.dart';

import '../resources/app_colors.dart';

mixin BasePageMixin {
  Widget buildBody(BuildContext context);

  PreferredSizeWidget? buildAppBar(BuildContext context) => null;

  Widget? buildBottomNavigationBar(BuildContext context) => null;

  Widget? buildBottomSheet(BuildContext context) => null;

  Widget? buildDrawer(BuildContext context) => null;

  Widget? buildEndDrawer(BuildContext context) => null;

  Widget? buildFloatActionButton(BuildContext context) => null;

  Color? backgroundColor(BuildContext context) => context.colors.background;

  int length = 0;

  Widget buildPage(BuildContext context) => DefaultTabController(
        length: length,
        child: Scaffold(
          backgroundColor: backgroundColor(context),
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          appBar: buildAppBar(context),
          body: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: buildBody(context),
          ),
          bottomNavigationBar: buildBottomNavigationBar(context),
          bottomSheet: buildBottomSheet(context),
          drawer: buildDrawer(context),
          endDrawer: buildEndDrawer(context),
          floatingActionButton: buildFloatActionButton(context),
        ),
      );

  bool get tapOutsideHideKeyBoard => false;

  bool get resizeToAvoidBottomInset => false;
}
