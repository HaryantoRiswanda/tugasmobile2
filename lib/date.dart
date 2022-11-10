import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:tugasflutter_haryanto/custom_button.dart';
import 'package:intl/intl.dart';

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  DateTime _selectedDate = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd-MM-yyyy');
  TimeOfDay _selectedTime = TimeOfDay.now();

  void _showDatePicker(context) async {
    final datePick = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: _selectedDate.subtract(const Duration(days: 30)),
      lastDate: DateTime(_selectedDate.year + 1),
    );

    if (datePick != null) {
      setState(() {
        _selectedDate = datePick;
      });
    }
  }

  void _showTimePicker(context) async {
    final timePick = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );

    if (timePick != null) {
      setState(() {
        _selectedTime = timePick;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Tanggal : ${_dateFormat.format(_selectedDate)}',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 35,
              ),
              CustomButton(
                text: 'Pilih tanggal',
                onPressed: () {
                  _showDatePicker(context);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Waktu : ${_selectedTime.format(context)}',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 70,
              ),
              CustomButton(
                text: 'Pilih Jam',
                onPressed: () {
                  _showTimePicker(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
