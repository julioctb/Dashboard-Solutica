import 'package:flutter/material.dart';

class ChipStatus extends StatelessWidget {
  const ChipStatus({super.key, required this.jobStatus});

  final String jobStatus;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 20,
      width: 80,
      decoration: _getDecoration(jobStatus),
      child: Text(jobStatus,
          style: TextStyle(
              fontSize: 12,
              //fontWeight: FontWeight.bold,
              color: _getColor(jobStatus))),
    );
  }

  Color _getColor(String condition) {
    switch (condition) {
      case 'Activo':
        return Colors.green;

      case 'Temporal':
        return Colors.yellow.shade700;

      case 'Baja':
        return Colors.red;

      default:
        return Colors.green;
    }
  }

  BoxDecoration _getDecoration(String condition) {
    switch (condition) {
      case 'Activo':
        return _buildDecorationActive();

      case 'Temporal':
        return _buildDecorationTemporal();

      case 'Baja':
        return _buildDecorationInactive();

      default:
        return _buildDecorationActive();
    }
  }

  BoxDecoration _buildDecorationActive() => BoxDecoration(
      color: Colors.green.withOpacity(0.07),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      border: Border.all(color: Colors.green.withOpacity(0.4)));

  BoxDecoration _buildDecorationTemporal() => BoxDecoration(
      color: Colors.yellow.withOpacity(0.07),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      border: Border.all(color: Colors.yellow.shade700));

  BoxDecoration _buildDecorationInactive() => BoxDecoration(
      color: Colors.red.withOpacity(0.07),
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      border: Border.all(color: Colors.red.withOpacity(0.4)));
}
