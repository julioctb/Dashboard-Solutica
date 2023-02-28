import 'package:flutter/material.dart';

class SearchText extends StatelessWidget {
  const SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: 40,
     decoration: _buildBoxDecoration(),
     child: const TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: 'Buscar',
        hintStyle: TextStyle(color: Colors.grey),
        prefixIcon: Icon(Icons.search_outlined,
        color: Colors.grey,)
      ),
     ),

    );
  }

  BoxDecoration _buildBoxDecoration() => BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.grey.withOpacity(0.2)
  );
}