import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T4AEnterPin extends StatelessWidget {
  const T4AEnterPin({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t4a',
      title: 'Enter your PIN',
      status: 'Driver only',
      pinEntry: true);
}
