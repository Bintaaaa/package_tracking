import 'package:flutter/material.dart';
import 'package:latihan_clean_code/domain/location/province_data.dart';

class DropDownLocation<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? listItem;
  final Function(T?)? onChanged;
  final String? hint;
  final T? resultData;
  const DropDownLocation(
      {Key? key, this.listItem, this.onChanged, this.hint, this.resultData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      items: listItem,
      onChanged: onChanged,
      isExpanded: true,
      hint: Text(hint!),
      value: resultData,
    );
  }
}
