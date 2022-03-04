import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:monitest/utils/route_transition.dart';

abstract class BaseCordinator {
  void push(BuildContext context, {required Widget route}) {
    Navigator.push(context, RouteTransition.slideIn(route));
  }

  void pushFadeIn(BuildContext context, {required Widget route}) {
    Navigator.push(context, RouteTransition.fadeIn(route));
  }
}
