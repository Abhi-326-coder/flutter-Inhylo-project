import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T4CDriverMenu extends StatelessWidget {
  const T4CDriverMenu({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
          route: '/t4c',
          title: 'Driver menu',
          status: 'Driver menu ? Ramesh',
          menuItems: [
            MenuItem('Turn display off', destructive: true),
            MenuItem('Stop active mode', secondary: true),
            MenuItem('Back to ads', secondary: true)
          ]);
}
