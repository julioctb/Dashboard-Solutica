import 'package:flutter/material.dart';

import 'package:solutica/services/auth_service.dart';

import 'package:solutica/ui/labels/custom_labels.dart';

import '../cards/future_white_card.dart';

class DashboardView extends StatelessWidget {
   const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        Text( 'Dasboard' , 
          style: CustomLabels.h1,),
        const SizedBox(height: 10),
         
          FutureWhiteCard(
            futureFunction: AuthService.getUser(),
            child: Text('email: ${AuthService.currentUser!.email}')
            )
      ],
    );
  }
}

 



