import 'package:flutter/material.dart';

import 'package:solutica/datatables/personal_datasource.dart';

import 'package:solutica/ui/labels/custom_labels.dart';

class PersonalView extends StatefulWidget {
  const PersonalView({super.key});

  @override
  State<PersonalView> createState() => _PersonalViewState();
}
    int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

class _PersonalViewState extends State<PersonalView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ PaginatedDataTable(
        header:  Text('Listado de Personal', style: CustomLabels.h1,),
        initialFirstRowIndex: 1,
        actions: [
          FilledButton(onPressed: (){}, 
          child: Row(children: const[
            Icon(Icons.add),
            Text('Añadir')
          ],))
        ],
        rowsPerPage: _rowsPerPage * 2,
        onRowsPerPageChanged: (value) => setState( () => _rowsPerPage = value ?? 20 ),
        columns: const [
          DataColumn(label: Text('##')),
          DataColumn(label: Text('Nombre Completo')),
          DataColumn(label: Text('Perfil')),
          DataColumn(label: Text('Área')),
          DataColumn(label: Text('Estatus')),
          DataColumn(label: Text('Acciones')),
        ], 
        source: PersonalSource(),
        
        ),
      ]
    );
  }
}


