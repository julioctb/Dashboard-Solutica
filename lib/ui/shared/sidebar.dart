import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: double.infinity,
      decoration: _buildBoxDecoration(),
      child: ListView(
        physics:const ClampingScrollPhysics(),
        children:  [
         const Logo(),
         const SizedBox( height: 40),
         const TextSeparator( text: 'Principal'),
          MenuItem(text: 'Dashboard', icon: Icons.dashboard_outlined, onPressed: (){}),
         const SizedBox( height: 30),
         const TextSeparator( text: 'Recursos Humanos'),
          MenuItem(text: 'Personal', icon: Icons.groups_outlined, onPressed: (){}),
          MenuItem(text: 'Incidencias', icon: Icons.personal_injury_outlined, onPressed: (){}),
          MenuItem(text: 'Transferencias', icon: Icons.change_circle_outlined, onPressed: (){}),
          MenuItem(text: 'Altas', icon: Icons.person_add, onPressed: (){}),
          MenuItem(text: 'Bajas', icon: Icons.person_remove_outlined, onPressed: (){}),
          MenuItem(text: 'Formatos', icon: Icons.description_outlined, onPressed: (){}),
         const SizedBox( height: 30),
         const TextSeparator( text: 'Comunicaciones'),
          MenuItem(text: 'Chat', icon: Icons.chat_outlined, onPressed: (){}),
          MenuItem(text: 'Correos', icon: Icons.mark_email_read_outlined, onPressed: (){}),
         const SizedBox( height: 30),
         const TextSeparator( text: 'Empresa'),
          MenuItem(text: 'Nóminas', icon: Icons.request_quote_outlined, onPressed: (){}),
          MenuItem(text: 'Analítica', icon: Icons.show_chart_outlined, onPressed: (){}),
          MenuItem(text: 'Configuración', icon: Icons.corporate_fare_outlined, onPressed: (){}),
        ],
      ) ,
    );
  }

  BoxDecoration _buildBoxDecoration() => const BoxDecoration(
    gradient:  LinearGradient(
      colors: [
        Color(0xff092044),
        Color(0xff092042)
      ]),
      boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10
        )
      ]

  );
}