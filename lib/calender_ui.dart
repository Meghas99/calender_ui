import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calender_ui extends StatefulWidget {
  const Calender_ui({super.key});

  @override
  State<Calender_ui> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<Calender_ui> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 144, 197, 230)),
      body: Column(
        children: [
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'Calender',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              focusedDay: _focusedDay,
              calendarFormat: _calendarFormat,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
              calendarStyle: const CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.blueAccent,
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          const Divider(color: Colors.grey),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                'September 18,2024',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.pink,
                  width: 5,
                  height: 50,
                ),
                Container(
                  width: 320,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Marc's Birthday",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text("3h"),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.green,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.blue,
                  width: 5,
                  height: 50,
                ),
                Container(
                  width: 320,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Presentation of the new department",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text("3h"),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.green,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  color: Colors.indigo,
                  width: 5,
                  height: 50,
                ),
                Container(
                  width: 320,
                  height: 50,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 240, 227, 227),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Movie night (Tenet)",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 5,
                      // ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Text("3h"),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.green,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
