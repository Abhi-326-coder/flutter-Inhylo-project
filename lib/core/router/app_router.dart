import 'package:go_router/go_router.dart';
import '../../features/developer_dashboard/developer_dashboard_page.dart';
import '../../pages/not_found_page.dart';
import 'app_routes.dart';
import '../../screens/t1_link/t1a_show_qr.dart';
import '../../screens/t1_link/t1b_linked.dart';
import '../../screens/t1_link/t1c_already_linked.dart';
import '../../screens/t2_ads/t2a_new_ads.dart';
import '../../screens/t2_ads/t2b_downloading.dart';
import '../../screens/t2_ads/t2c_download_done.dart';
import '../../screens/t2_ads/t2d_download_failed.dart';
import '../../screens/t2_ads/t2e_no_internet.dart';
import '../../screens/t3_active/t3a_checking.dart';
import '../../screens/t3_active/t3b_ready.dart';
import '../../screens/t3_active/t3c_cannot_active.dart';
import '../../screens/t4_driver_menu/t4a_enter_pin.dart';
import '../../screens/t4_driver_menu/t4b_wrong_pin.dart';
import '../../screens/t4_driver_menu/t4c_driver_menu.dart';
import '../../screens/t4_driver_menu/t4d_turn_off.dart';
import '../../screens/t4_driver_menu/t4e_display_off.dart';

final appRouter = GoRouter(
  initialLocation: AppRoutes.home,
  errorBuilder: (context, state) => NotFoundPage(path: state.uri.path),
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const DeveloperDashboardPage(),
    ),
    GoRoute(
        path: AppRoutes.t1a, builder: (context, state) => const T1AShowQr()),
    GoRoute(
        path: AppRoutes.t1b, builder: (context, state) => const T1BLinked()),
    GoRoute(
        path: AppRoutes.t1c,
        builder: (context, state) => const T1CAlreadyLinked()),
    GoRoute(
        path: AppRoutes.t2a, builder: (context, state) => const T2ANewAds()),
    GoRoute(
        path: AppRoutes.t2b,
        builder: (context, state) => const T2BDownloading()),
    GoRoute(
        path: AppRoutes.t2c,
        builder: (context, state) => const T2CDownloadDone()),
    GoRoute(
        path: AppRoutes.t2d,
        builder: (context, state) => const T2DDownloadFailed()),
    GoRoute(
        path: AppRoutes.t2e,
        builder: (context, state) => const T2ENoInternet()),
    GoRoute(
        path: AppRoutes.t3a, builder: (context, state) => const T3AChecking()),
    GoRoute(path: AppRoutes.t3b, builder: (context, state) => const T3BReady()),
    GoRoute(
        path: AppRoutes.t3c,
        builder: (context, state) => const T3CCannotActive()),
    GoRoute(
        path: AppRoutes.t4a, builder: (context, state) => const T4AEnterPin()),
    GoRoute(
        path: AppRoutes.t4b, builder: (context, state) => const T4BWrongPin()),
    GoRoute(
        path: AppRoutes.t4c,
        builder: (context, state) => const T4CDriverMenu()),
    GoRoute(
        path: AppRoutes.t4d, builder: (context, state) => const T4DTurnOff()),
    GoRoute(
        path: AppRoutes.t4e,
        builder: (context, state) => const T4EDisplayOff()),
  ],
);
