import 'package:flutter/material.dart';

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isActive;

  FilterChipWidget({required this.label, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: FilterChip(
        label: Text(
          label,
          style: TextStyle(color: isActive ? Colors.green : Colors.grey),
        ),
        backgroundColor: isActive
            ? Color.fromARGB(255, 57, 48, 70)
            : Color.fromARGB(255, 33, 26, 42),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(color: isActive ? Colors.green : Colors.grey),
        ),
        onSelected: (bool value) {},
      ),
    );
  }
}
