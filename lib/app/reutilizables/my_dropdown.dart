import 'package:flutter/material.dart';

class MyDropdown extends StatelessWidget {
  List<String> items;
  String? value;
  Function(String?) onChanged;
  MyDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              alignment: AlignmentDirectional.centerStart,
              value: item,
              child: Text(
                item,
              ),
            ),
          )
          .toList(),
      onChanged: (e) => onChanged.call(e),
      value: value,
    );
  }
}
