import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T1BLinked extends StatelessWidget {
  const T1BLinked({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t1b',
      title: 'Linked to Ramesh Kumar',
      message: 'This tablet is ready. Next, download your ads.',
      status: 'Online ? TAB-0142',
      action: 'Continue',
      success: true);
}
