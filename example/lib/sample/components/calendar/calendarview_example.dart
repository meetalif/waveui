import 'package:waveui/waveui.dart';

///标签选择view
class CalendarViewExample extends StatefulWidget {
  final String _title;

  CalendarViewExample(this._title);

  @override
  State<StatefulWidget> createState() => TagViewExamplePageState();
}

class TagViewExamplePageState extends State<CalendarViewExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaveAppBar(
          title: widget._title,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: <Widget>[
              Text('Single selection-no control-week view'),
              _calendarViewWeekNocontrol(context),
              WaveLine(
                height: 40.0,
              ),
              Text('Single selection-no control-week view-custom WeekName'),
              _calendarViewWeekNocontrollCustomWeekName(context),
              WaveLine(
                height: 40.0,
              ),
              Text('Single selection-week view'),
              _calendarViewWeek(context),
              WaveLine(
                height: 40.0,
              ),
              Text('Range selection-week view'),
              _calendarViewWeekRange(context),
              WaveLine(
                height: 40.0,
              ),
              Text('single-selection-month view'),
              _calendarViewMonth(context),
              WaveLine(
                height: 40.0,
              ),
              Text('Range Selection-Month View'),
              _calendarViewMonthRange(context),
            ],
          ),
        ));
  }

  Widget _calendarViewWeekNocontrol(context) {
    return WaveCalendarView.single(
      displayMode: DisplayMode.week,
      showControllerBar: false,
      dateChange: (date) {
        Fluttertoast.showToast(msg: 'Selected time: $date', context);
      },
    );
  }

  Widget _calendarViewWeekNocontrollCustomWeekName(context) {
    return WaveCalendarView.single(
      displayMode: DisplayMode.week,
      showControllerBar: false,
      weekNames: [
        'Sunday',
        'Monday',
        'Tuesday',
        'Wednesday',
        'Thursday',
        'Friday',
        'Saturday'
      ],
      dateChange: (date) {
        Fluttertoast.showToast(msg: 'Selected time: $date', context);
      },
    );
  }

  Widget _calendarViewWeek(context) {
    return WaveCalendarView.single(
      displayMode: DisplayMode.week,
      initDisplayDate: DateTime.parse('2020-06-01'),
      minDate: DateTime(2020),
      maxDate: DateTime(2021),
      dateChange: (date) {
        Fluttertoast.showToast(msg: '选中的时间： $date', context);
      },
    );
  }

  Widget _calendarViewWeekRange(context) {
    return WaveCalendarView.range(
      displayMode: DisplayMode.week,
      rangeDateChange: (rangeDate) {
        Fluttertoast.showToast(
            msg: 'Start time: ${rangeDate.start} , end time: ${rangeDate.end}',
            context);
      },
    );
  }

  Widget _calendarViewMonth(context) {
    return WaveCalendarView.single(
      initDisplayDate: DateTime.parse('2020-06-01'),
      minDate: DateTime(2020),
      maxDate: DateTime(2021),
      dateChange: (date) {
        Fluttertoast.showToast(msg: 'Selected time: $date', context);
      },
    );
  }

  Widget _calendarViewMonthRange(context) {
    return WaveCalendarView.range(
      minDate: DateTime(2020),
      maxDate: DateTime(2023),
      rangeDateChange: (rangeDate) {
        Fluttertoast.showToast(
            msg: 'Start time: ${rangeDate.start} , end time: ${rangeDate.end}',
            context);
      },
    );
  }
}
