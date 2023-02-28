import 'package:flutter/material.dart';

import 'package:solutica/ui/shared/navbar.dart';
import 'package:solutica/ui/shared/sidebar.dart';

class DashboardLayout extends StatelessWidget {

  final Widget child;

  const DashboardLayout({
    super.key, required this.child,
  });


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color(0xffEDF1F2),
        body: Stack(
          children: [
          Row(
            children: [
            if (size.width >= 700) 
            const SideBar(),

             Expanded(
              child: Column(
                children: [
                const Navbar(),
                Expanded(child: child)

              
              ]),
            ),
          ]),
          if (size.width < 360) const SideBar()
        ]));
  }
}
