import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  final String hint;

  final List<String> items;

  final String? selectedValue;

  final Function(String?) onChanged;

  const CustomDropdown({
    super.key,

    required this.hint,

    required this.items,

    required this.selectedValue,

    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(18),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),

            blurRadius: 15,

            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,

          hint: Text(hint),

          value: selectedValue,

          items: items
              .map((e) => DropdownMenuItem(value: e, child: Text(e)))
              .toList(),

          onChanged: onChanged,
        ),
      ),
    );
  }
}
