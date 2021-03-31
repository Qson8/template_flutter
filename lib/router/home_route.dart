import 'package:router_impl/app_route.dart';
import 'package:template_flutter/pages/home_page.dart';

class HomeRoute extends AppHomeRoute {
  @override
  get builder => () {
        return HomePage();
      };
}
