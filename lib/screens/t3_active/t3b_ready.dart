import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T3BReady extends StatelessWidget {
  const T3BReady({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t3b',
      title: 'You?re active',
      message:
          'The display starts in 5 seconds. After that, only ads show and the screen won?t respond to touch.',
      status: 'Online ? TAB-0142 ? Ramesh',
      action: 'Start now',
      success: true);
}
