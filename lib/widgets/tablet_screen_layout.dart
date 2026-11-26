import 'package:flutter/material.dart';
import 'tablet_header.dart';

class TabletScreenLayout extends StatelessWidget {
  const TabletScreenLayout({
    super.key,
    required this.status,
    required this.child,
  });
  final String status;
  final Widget child;

  @override
  Widget build(BuildContext context) => SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final tabletWidth = width > 1100 ? 980.0 : width;
            return Center(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: tabletWidth, maxHeight: 720),
                child: AspectRatio(
                  aspectRatio: 16 / 10,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: const Color(0xFF0B1020), width: 8),
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      children: [
                        TabletHeader(status: status),
                        Expanded(
                          child: SingleChildScrollView(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 20,
                            ),
                            child: Center(
                              child: ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxWidth: 560),
                                child: child,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
}
