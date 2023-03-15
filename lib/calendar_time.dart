import 'package:flutter/material.dart';

class CalendarTime extends StatefulWidget {
  const CalendarTime({super.key});

  @override
  State<CalendarTime> createState() => _CalendarTimeState();
}

class _CalendarTimeState extends State<CalendarTime> {
  DateTime dateTime = DateTime(2023, 03, 15);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendar"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              "https://i0.wp.com/sitn.hms.harvard.edu/wp-content/uploads/2019/03/SITN_March.jpg?fit=4000%2C2667&ssl=1",
              width: 350,
              height: 290,
            ),
            const Text("CALENDAR WITH TIME"),
            OutlinedButton(
              onPressed: () async {
                final date = await pickDate();
                if (date == null) return;

                setState(() {
                  dateTime = date;
                });
              },
              child: Text('${dateTime.year}/${dateTime.month}/${dateTime.day}'),
            ),
          ],
        ),
      ),
    );
  }

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(1900),
      lastDate: DateTime(2200));
}
