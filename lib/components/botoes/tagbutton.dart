import 'package:flutter/material.dart';

class TagButton extends StatefulWidget {
  final String tagTitle;
  final bool isSelected;
  final VoidCallback onSelected;

  const TagButton({
    super.key,
    required this.tagTitle,
    this.isSelected = false,
    required this.onSelected,
  });

  @override
  _TagButtonState createState() => _TagButtonState();
}

class _TagButtonState extends State<TagButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onSelected,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: widget.isSelected
              ? Colors.white.withOpacity(0.05)
              : Colors.transparent,
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
          borderRadius: BorderRadius.circular(
              20), // Use um valor alto para bordas completamente arredondadas
        ),
        child: Text(
          widget.tagTitle,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
