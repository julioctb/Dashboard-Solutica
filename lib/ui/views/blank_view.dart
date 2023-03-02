import 'package:flutter/material.dart';

import 'package:solutica/ui/cards/white_card.dart';
import 'package:solutica/ui/labels/custom_labels.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Text('Blank View', style: CustomLabels.h1,),
        const SizedBox(height: 10),
        const WhiteCard(
          title: 'Título',
          child: Text('Pagina Blanca')
        )
      ],
    );
  }
}