import 'package:flutter/cupertino.dart';
import 'package:monitest/coordinators/auth_coordinator.dart';
import 'package:monitest/coordinators/dash_coordinator.dart';

class AppCoodinator {
  final BuildContext context;
  final AuthCoordinator auth;
  final DashCoordinator dash;
  AppCoodinator(this.context)
      : auth = AuthCoordinator(context),
        dash = DashCoordinator(context);
}
