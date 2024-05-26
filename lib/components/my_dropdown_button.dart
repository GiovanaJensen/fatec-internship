import 'package:flutter/material.dart';

class MyDropdownButton extends StatelessWidget {
  final String value;
  final List<String> items;
  final String hintText;
  final ValueChanged<String?> onChanged;

  const MyDropdownButton({
    Key? key,
    required this.value,
    required this.items,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        value: value,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        hint: Text(
          hintText,
          style: TextStyle(color: Color(0xB34E4B59), fontSize: 12),
        ),
        onChanged: onChanged,
        items: items.map((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(
              item,
              style: const TextStyle(color: Color(0xFF4E4B59), fontSize: 12),
            ),
          );
        }).toList(),
      ),
    );
  }
}
