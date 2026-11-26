import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T3CCannotActive extends StatelessWidget {
  const T3CCannotActive({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t3c',
      title: 'Fix this to go active',
      status: 'Online ? TAB-0142 ? Ramesh',
      checklist: [
        CheckItem('Location (GPS)', '? Off', good: false),
        CheckItem('Storage', '? Enough space'),
        CheckItem('Ads ready', '? 21 ads')
      ],
      smallMessage:
          'Turn on location in the tablet settings, then check again.',
      action: 'Check again');
}
