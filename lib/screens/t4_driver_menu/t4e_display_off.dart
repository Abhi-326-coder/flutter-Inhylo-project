import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T4EDisplayOff extends StatelessWidget {
  const T4EDisplayOff({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
          route: '/t4e',
          title: 'Display is off',
          status: 'Driver menu ? Ramesh',
          menuItems: [
            MenuItem('Turn display on'),
            MenuItem('Stop active mode', secondary: true)
          ]);
}
