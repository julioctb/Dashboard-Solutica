import 'package:flutter/material.dart';

import 'package:solutica/ui/chips/chip_status.dart';
import 'package:solutica/ui/buttons/custom_row_icon_btn.dart';

class PersonalSource extends DataTableSource {
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
    index: index , 
    color: index % 2 == 0
          ? MaterialStateColor.resolveWith((states) => Colors.grey.shade100)
          : null,
    cells:  [
      DataCell(Text(index.toString())),
      DataCell(Row(children: const [
        Image(image: AssetImage('assets/avatar_male.png'), height: 30,),
        SizedBox(width: 5,),
        Text('Nombre Persona')],)),
      const DataCell(Text('Jardinería')),
      const DataCell(Text('Area Asignada')),
      const DataCell(  ChipStatus(jobStatus: 'Activo',)),
      DataCell(Row(
        children: [
          CustomRowIconButton(icon: Icons.remove_red_eye_outlined,onTap: ()=> print('vista rapida')),
          const SizedBox(width: 5,),
          CustomRowIconButton(icon: Icons.change_circle_outlined,onTap: ()=> print('cambio de personal'),),
          const SizedBox(width: 5,),
          CustomRowIconButton(icon: Icons.edit,onTap: ()=> print('editar personal')),
        ],
      )),
      
    ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => 50;

  @override
  int get selectedRowCount => 0;
}


// ignore: must_be_immutable
