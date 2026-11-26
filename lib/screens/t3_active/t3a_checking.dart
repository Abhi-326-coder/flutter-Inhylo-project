import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T3AChecking extends StatelessWidget {
  const T3AChecking({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
          route: '/t3a',
          title: 'Checking your tablet',
          status: 'Online ? TAB-0142 ? Ramesh',
          checklist: [
            CheckItem('Location (GPS)', '? Working'),
            CheckItem('Storage', '? Enough space'),
            CheckItem('Ads ready', '? 21 ads'),
            CheckItem('Linked to your account', 'Checking?', pending: true)
          ]);
}
