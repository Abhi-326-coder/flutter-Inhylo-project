import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T2BDownloading extends StatelessWidget {
  const T2BDownloading({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t2b',
      title: 'Downloading ads',
      status: 'Online ? TAB-0142 ? Ramesh',
      progress: true,
      smallMessage: 'Keep the tablet connected. Do this while parked.');
}
