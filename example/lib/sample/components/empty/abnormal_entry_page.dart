import 'package:waveui/waveui.dart';
import 'package:example/sample/components/empty/abnormal_state_example.dart';
import 'package:example/sample/home/list_item.dart';

class AbnormalStatesEntryPage extends StatelessWidget {
  final _title;

  AbnormalStatesEntryPage(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WaveAppBar(
          title: _title,
        ),
        body: ListView(
          children: <Widget>[
            ListItem(
              title: "Exception Information + Operation",
              isShowLine: false,
              describe: 'Exception information + operation',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AbnomalStateExample(
                      caseIndex: 0,
                    );
                  },
                ));
              },
            ),
            ListItem(
              title: "The exception information is displayed in the center",
              describe: 'The exception information is displayed in the center',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AbnomalStateExample(
                      caseIndex: 1,
                    );
                  },
                ));
              },
            ),
            ListItem(
              title: "Exception information is displayed by default",
              describe: 'Exception information is displayed by default',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AbnomalStateExample(
                      caseIndex: 2,
                    );
                  },
                ));
              },
            ),
            ListItem(
              title: "Large Module Empty State",
              describe: 'Large module empty state',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AbnomalStateExample(
                      caseIndex: 3,
                    );
                  },
                ));
              },
            ),
            ListItem(
              title: "Single button effect",
              describe: 'Single button effect',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AbnomalStateExample(
                      caseIndex: 4,
                    );
                  },
                ));
              },
            ),
            ListItem(
              title: "Double button effect",
              describe: 'Double button effect',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AbnomalStateExample(
                      caseIndex: 5,
                    );
                  },
                ));
              },
            ),
            ListItem(
              title: "Small Module Empty State",
              describe: 'Small module empty',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) {
                    return AbnomalStateExample(
                      caseIndex: 6,
                    );
                  },
                ));
              },
            ),
          ],
        ));
  }
}
