import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T2DDownloadFailed extends StatelessWidget {
  const T2DDownloadFailed({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t2d',
      title: '1 ad didn?t download',
      message: 'The connection dropped. Your other 2 new ads are ready.',
      status: 'Online ? TAB-0142 ? Ramesh',
      action: 'Try again',
      secondaryAction: 'Go active',
      error: true);
}
