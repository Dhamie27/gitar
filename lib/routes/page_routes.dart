import 'package:get/get.dart';
import 'package:gitar/home.dart';
import 'package:gitar/routes/route_names.dart';

class ROUTES {
  static final pages = [
    //SPALSH SCREEN
    // GetPage(name: RouteName.pageScreen, page: (() => const Splash_V())),
    GetPage(name: RouteName.pageHome, page: (() => const Home())),
  ];
}
