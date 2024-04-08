import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC 달력 스터디',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GDSC 모바일 스터디'),
      ),
      body: Column(

        children: <Widget>[
          Text('과제',
              style: TextStyle(
                fontSize: 24,
              )
          ),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            children: <Widget>[
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('오늘의 과제'),
                    Icon(Icons.assignment),
                  ],
                ),
              ),
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('수행한 과제'),
                    Icon(Icons.check),
                  ],
                ),
              ),
            ],
          ),

          Text('나의 수행도',
              style: TextStyle(
                fontSize: 24,
              )
          ),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),

          Text('나의 다짐',
          style: TextStyle(
            fontSize: 24,
          )),
          Text('과제 끝내기'),
        ],
      ),
    );
  }
}
