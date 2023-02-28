import 'package:flutter/material.dart';
import 'package:solutica/ui/shared/widgets/widgets.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: buildBoxDecoration(),
      child: Row(
        children: [
          // TODO: icono del menu

          const SizedBox(width: 20,),

           ConstrainedBox(
            constraints: const BoxConstraints( maxWidth: 250),
            child: const SearchText()),

            const Spacer(),
            const NotificationIndicator(),
            const SizedBox(width: 10,),
            const NavbarAvatar(),
            const SizedBox(width: 20,)

        ],
      ),
    );
  }

 BoxDecoration buildBoxDecoration() => const BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 5
    )
  ]
 );

  
}