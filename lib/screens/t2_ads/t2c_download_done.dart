import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T2CDownloadDone extends StatelessWidget {
  const T2CDownloadDone({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t2c',
      title: 'All ads downloaded',
      message: '21 ads are ready to play, even without internet.',
      status: 'Online ? TAB-0142 ? Ramesh',
      action: 'Go active',
      success: true);
}
