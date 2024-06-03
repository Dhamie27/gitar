import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gitar/routes/page_routes.dart';

import 'package:gitar/routes/route_names.dart';

void main() async {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:
          // RouteName.pageScreen,
          kDebugMode ? RouteName.pageHome : RouteName.pageHome,
      // RouteName.pageScreen,

      getPages: ROUTES.pages));
}
