import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T4BWrongPin extends StatelessWidget {
  const T4BWrongPin({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t4b',
      title: 'Enter your PIN',
      status: 'Driver only',
      pinEntry: true,
      wrongPin: true);
}
