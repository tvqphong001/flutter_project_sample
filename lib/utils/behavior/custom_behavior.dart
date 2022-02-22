import 'package:flutter/material.dart';

class MyBehavior extends ScrollBehavior {
  const MyBehavior();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) => ClampingScrollPhysics();
}

class HideOverScroll extends ScrollConfiguration{
    const HideOverScroll({
    Key? key,
    required Widget child,
  }): super(key: key, behavior:const MyBehavior(), child: child);
}