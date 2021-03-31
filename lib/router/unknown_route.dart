import 'package:flutter/material.dart';
import 'package:router_impl/app_route.dart';
import 'package:template_flutter/pages/unknown_page.dart';

class UnknownRoute extends AppRoute {
  @override
  Widget get child => UnknownPage();

  @override
  String get location => '/404';
}
