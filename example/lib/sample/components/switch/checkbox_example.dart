import 'package:waveui/waveui.dart';

class CheckboxExample extends StatefulWidget {
  @override
  _CheckboxExampleState createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: WaveAppBar(
        title: 'Multiple choice example',
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Normal case: multiple selection, the control is on the left of the selection button',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "Options:",
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 130,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return WaveCheckbox(
                    radioIndex: index,
                    disable: index == 2,
                    childOnRight: false,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Option $index",
                      ),
                    ),
                    onValueChangedAtIndex: (index, value) {
                      if (value) {
                        Fluttertoast.showToast(
                            msg: "$index item is selected", context);
                      } else {
                        Fluttertoast.showToast(
                            msg: "The $index item is unchecked", context);
                      }
                    },
                  );
                },
              ),
            ),
            Text(
              'Normal case: multiple selection, living on both sides of the screen',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            WaveCheckbox(
              radioIndex: 10,
              isSelected: true,
              childOnRight: true,
              mainAxisSize: MainAxisSize.max,
              child: Container(
                  width: 100,
                  height: 20,
                  color: Colors.lightBlue,
                  child: Center(
                      child: Text('custom view',
                          style: TextStyle(color: Colors.white)))),
              onValueChangedAtIndex: (index, value) {
                if (value) {
                  Fluttertoast.showToast(
                      msg: "$index item is selected", context);
                } else {
                  Fluttertoast.showToast(
                      msg: "The $index item is unchecked", context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
