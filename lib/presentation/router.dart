import 'package:auto_route/auto_route.dart';
import 'package:latihan_clean_code/presentation/home/home_page.dart';
import 'package:latihan_clean_code/presentation/location/location_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      path: '/',
      initial: true,
    ),
    AutoRoute(
      page: LocationPage,
      path: '/location',
    ),
    RedirectRoute(path: '*', redirectTo: '')
  ],
)
class $AppRouter {}
