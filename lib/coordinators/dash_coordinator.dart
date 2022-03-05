import 'package:flutter/material.dart';
import 'package:monitest/coordinators/base_coordinator.dart';
import 'package:monitest/main.dart';

class DashCoordinator extends BaseCordinator {
  final BuildContext context;
  DashCoordinator(this.context);
  void toDasboard() {
    push(context, route: App());
  }

  void toRegister() {
    push(context, route: App());
  }
}
