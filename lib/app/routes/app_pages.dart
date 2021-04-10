import 'package:get/get.dart';

import 'package:hukumohm/app/modules/home/home_view.dart';
import 'package:hukumohm/app/modules/simulation/simulation_view.dart';
import 'package:hukumohm/app/modules/splash/splash_view.dart';
import 'package:hukumohm/app/modules/theory/theory_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.THEORY,
      page: () => TheoryView(),
      binding: TheoryBinding(),
    ),
    GetPage(
      name: _Paths.SIMULATION,
      page: () => SimulationView(),
      binding: SimulationBinding(),
    ),
  ];
}
