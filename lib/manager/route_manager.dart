import 'package:get/get.dart';
import 'package:route_management_with_getx/screens/first_screen.dart';
import 'package:route_management_with_getx/screens/second_screen.dart';

class RouteManager {
  static const initial = Routes.firstScreen;

  static List<GetPage> getPages() {
    return [
      GetPage(name: Routes.firstScreen, page: () => FirstScreen()),
      GetPage(name: Routes.secondScreen, page: () => SecondScreen()),
    ];
  }
}

class Routes {
  static const firstScreen = '/firstScreen';
  static const secondScreen = '/secondScreen';
}
