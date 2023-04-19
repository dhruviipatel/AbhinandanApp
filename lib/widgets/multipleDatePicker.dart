import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../colors.dart';

class MultipleDatePicker extends StatefulWidget {
  const MultipleDatePicker({super.key});

  @override
  State<MultipleDatePicker> createState() => _MultipleDatePickerState();
}

class _MultipleDatePickerState extends State<MultipleDatePicker> {
  String _selectedDate = '';
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
            // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value.toString();
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Card(
        child: SfDateRangePicker(
          headerHeight: 100,
          headerStyle: DateRangePickerHeaderStyle(
            backgroundColor: MyColors.myCalenderColor,
            textStyle: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w400, color: Colors.black),
          ),
          view: DateRangePickerView.month,
          monthViewSettings:
              DateRangePickerMonthViewSettings(viewHeaderHeight: 50),
          monthCellStyle: DateRangePickerMonthCellStyle(
              todayTextStyle: TextStyle(color: MyColors.myCalenderColor)),
          yearCellStyle: DateRangePickerYearCellStyle(
              todayTextStyle: TextStyle(color: MyColors.myCalenderColor)),
          todayHighlightColor: MyColors.myCalenderColor,
          selectionColor: MyColors.myCalenderColor,
          onSelectionChanged: _onSelectionChanged,
          selectionMode: DateRangePickerSelectionMode.multiple,
        ),
      ),
    );
  }
}
