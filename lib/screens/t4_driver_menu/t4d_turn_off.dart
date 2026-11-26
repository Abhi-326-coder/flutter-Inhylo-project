import 'package:flutter/material.dart';
import '../../widgets/driver_page.dart';

class T4DTurnOff extends StatelessWidget {
  const T4DTurnOff({super.key});
  @override
  Widget build(BuildContext context) => const DriverPage(
      route: '/t4d',
      title: 'Turn the display off?',
      message:
          'Passengers will see a blank screen. Ads stop until you turn the display back on with your PIN.',
      status: 'Driver menu ? Ramesh',
      action: 'Turn off',
      secondaryAction: 'Cancel');
}
