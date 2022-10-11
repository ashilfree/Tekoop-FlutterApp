import 'package:flutter/material.dart';
import 'package:tekoop/core/themes/colors.dart';
class CustomCategoryDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> dropdownMenuItemList;
  final ValueChanged<T> onChanged;
  final T value;
  final bool isEnabled;
  CustomCategoryDropdown({
    Key key,
    @required this.dropdownMenuItemList,
    @required this.onChanged,
    @required this.value,
    this.isEnabled = true,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isEnabled,
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          icon: Icon(Icons.accessible_rounded, color:whiteColor, size:1),
          isExpanded: true,
          itemHeight: 50.0,
          style: TextStyle(
              fontSize: 15.0,
              color: isEnabled ? Colors.black : Colors.grey[700]),
          items: dropdownMenuItemList,
          onChanged: onChanged,
          value: value,
        ),
      ),
    );
  }
}