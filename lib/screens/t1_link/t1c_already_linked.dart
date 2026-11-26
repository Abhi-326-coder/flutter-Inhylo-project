import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T1CAlreadyLinked extends StatelessWidget {
  const T1CAlreadyLinked({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t1c',
      title: 'This tablet is linked to another driver',
      message:
          'Contact INHYLO support so they can unlink it first. Then scan the code again.',
      status: 'Not linked ? TAB-0142',
      action: 'Call support',
      secondaryAction: 'Show QR again',
      error: true);
}
