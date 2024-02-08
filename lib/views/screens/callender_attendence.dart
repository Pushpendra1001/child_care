import 'package:child_care/views/common/student_detail_card.dart';
import 'package:child_care/views/common/student_list_card.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AttendencePage extends StatefulWidget {
  const AttendencePage({super.key});

  @override
  State<AttendencePage> createState() => _AttendencePageState();
}

var today = DateTime.now();

class _AttendencePageState extends State<AttendencePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("Attendence"))),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: 120,
                  child: student_detail_card(
                    student_name: "Anmol",
                    father_name: "Ved Prakash",
                    stu_class: "LKG GRADE 1",
                    stu_img: "",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TableCalendar(
                  calendarFormat: CalendarFormat.month,
                  focusedDay: today,
                  headerStyle: const HeaderStyle(
                      formatButtonVisible: false,
                      titleCentered: true,
                      headerMargin:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 20)),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      today = focusedDay;
                    });
                  },
                  firstDay: DateTime.utc(2024, 1, 1),
                  lastDay: DateTime.utc(2030, 3, 14),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    attendence_button(btn_color: Colors.yellow, txt: "Early"),
                    attendence_button(btn_color: Colors.green, txt: "On-time"),
                    attendence_button(btn_color: Colors.red, txt: "Late"),
                    attendence_button(btn_color: Colors.black, txt: "Absent"),
                    attendence_button(btn_color: Colors.black, txt: "Holiday"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class attendence_button extends StatefulWidget {
  attendence_button({
    super.key,
    required this.txt,
    required this.btn_color,
  });

  String txt;
  Color btn_color;

  @override
  State<attendence_button> createState() => _attendence_buttonState();
}

class _attendence_buttonState extends State<attendence_button> {
  @override
  bool counter = false;
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: TextButton(
            onPressed: () {
              setState(() {
                counter = !counter;

                if (counter == true) {
                  value += 1;
                } else {
                  value -= 1;
                }
              });
            },
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: BorderSide(color: widget.btn_color),
                ),
              ),
            ),
            child: Text(value.toString()),
          ),
        ),
        Text(widget.txt),
      ],
    );
  }
}
