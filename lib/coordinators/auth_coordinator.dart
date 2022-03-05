import 'package:flutter/material.dart';
import 'package:monitest/coordinators/base_coordinator.dart';
import 'package:monitest/main.dart';

class AuthCoordinator extends BaseCordinator {
  final BuildContext context;
  AuthCoordinator(this.context);
  void toLogin() {
    push(context, route: App());
  }

  void toRegister() {
    push(context, route: App());
  }
}
