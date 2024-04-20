import 'package:flutter/material.dart';

class DropdownButtonElement extends StatefulWidget {
  const DropdownButtonElement({super.key});

  @override
  State<DropdownButtonElement> createState() => _DropdownButtonElementState();
}

class _DropdownButtonElementState extends State<DropdownButtonElement> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = "Mais relevantes";
    return DropdownButton<String>(
            value: dropdownValue,
            style: Theme.of(context).textTheme.bodyMedium,
            icon: Icon(Icons.arrow_drop_down),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: const [
              DropdownMenuItem<String>(
                  value: "Mais relevantes", child: Text('Mais relevantes')),
              DropdownMenuItem<String>(
                  value: "Recentes", child: Text('Recentes')),
              DropdownMenuItem<String>(value: "Popular", child: Text('Popular')),
            ],
          );
  }
}