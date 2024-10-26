import 'package:flutter/material.dart';

/// DateTimePickerExample - Demonstrates DatePicker and TimePicker usage.
///
/// This example allows users to select a date and a time, displaying the selected values.
class DateTimePickerExample extends StatefulWidget {
  @override
  _DateTimePickerExampleState createState() => _DateTimePickerExampleState();
}

class _DateTimePickerExampleState extends State<DateTimePickerExample> {
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (pickedTime != null && pickedTime != selectedTime) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Date and Time Picker Example'),
      ),
      backgroundColor: Theme.of(context).cardColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select a Date and Time',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 16.0),

            ElevatedButton(
              onPressed: () => _selectDate(context),
              child: const Text('Select Date'),
            ),
            if (selectedDate != null)
              Text('Selected Date: ${selectedDate!.toLocal()}'.split(' ')[0]),

            const SizedBox(height: 16.0),

            // Button to pick a time
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: const Text('Select Time'),
            ),
            if (selectedTime != null)
              Text('Selected Time: ${selectedTime!.format(context)}'),
          ],
        ),
      ),
    );
  }
}
