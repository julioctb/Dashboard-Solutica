import 'package:flutter/material.dart';

class PersonalSource extends DataTableSource {
  int index = 1;
  @override
  DataRow getRow(int index) {
    return DataRow.byIndex(
    index: index , 
    cells:  [
      DataCell(Text(index.toString())),
      DataCell(Row(children: const [
        Image(image: AssetImage('assets/avatar_male.png'), height: 30,),
        SizedBox(width: 5,),
        Text('Nombre Persona')],)),
      const DataCell(Text('Jardinería')),
      const DataCell(Text('Area Asignada')),
      DataCell(OutlinedButton(onPressed: (){}, child: Text('activo'))),
      DataCell(Row(
        children: [
          CustomRowIconButton(icon: Icons.edit,onTap: ()=> print('editar personal')),
          const SizedBox(width: 5,),
          CustomRowIconButton(icon: Icons.change_circle_outlined,onTap: ()=> print('cambio de personal'),),
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

class CustomRowIconButton extends StatelessWidget {
  const CustomRowIconButton({super.key, required this.icon, required this.onTap});
  final IconData  icon;
  final Function() onTap;
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8), 
        color: Colors.blue.withOpacity(0.08)),
        child: Icon(icon, color: Colors.blue.shade900, size: 20,),
        
          ),
    );
    
  }
}
