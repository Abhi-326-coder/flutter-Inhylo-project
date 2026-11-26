import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T2ENoInternet extends StatelessWidget {
  const T2ENoInternet({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t2e',
      title: 'No internet',
      message:
          'Connect to Wi-Fi or mobile data to download new ads. You can still go active with the 18 ads you have.',
      status: 'Offline ? TAB-0142 ? Ramesh',
      action: 'Try again',
      secondaryAction: 'Go active',
      error: true);
}
