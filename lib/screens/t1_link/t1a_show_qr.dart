import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T1AShowQr extends StatelessWidget {
  const T1AShowQr({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
        route: '/t1a',
        title: 'Link this tablet to your account',
        message:
            'On your phone, open INHYLO, go to Tablet, and scan this code.',
        status: 'Not linked · TAB-0142',
        qr: true,
      );
}
