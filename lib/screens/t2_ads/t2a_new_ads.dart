import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T2ANewAds extends StatelessWidget {
  const T2ANewAds({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t2a',
      title: 'Hi Ramesh',
      message: '3 new ads are ready to download.',
      status: 'Online ? TAB-0142 ? Ramesh',
      action: 'Download ads',
      smallMessage: '18 ads ready ? Last synced yesterday 6:10 PM');
}
