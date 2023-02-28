import 'package:flutter/material.dart';
import 'package:solutica/ui/shared/widgets/widgets.dart';


class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: 50,
      decoration: buildBoxDecoration(),
      child: Row(
        children: [
          if( size.width < 700)
          IconButton(icon: Icon(Icons.menu_outlined), onPressed: () {}),

          const SizedBox(width: 10),

           //if( size.width >390)
           ConstrainedBox(
            constraints: const BoxConstraints( maxWidth: 250),
            child: const SearchText()),

            const Spacer(),
            const NotificationIndicator(),
            const SizedBox(width: 10,),

            if(size.width >= 390 )
            ...[
            const NavbarAvatar(),
            const SizedBox(width: 20,)

            ]

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