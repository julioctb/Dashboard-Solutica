import 'package:flutter/material.dart';

class NotificationIndicator extends StatelessWidget {
  const NotificationIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Icon(Icons.notifications_none_outlined, color: Colors.grey,),
        Positioned(
          right: 2,
          child: Container(
            height: 5,
            width: 5,        
            decoration: _buildBoxDecoration(),
          ),
        )
      ],
    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    borderRadius: BorderRadius.circular(100),
    color: Colors.red
  );
}