import 'package:waveui/waveui.dart';

/// 星级评分条
class RatingExample extends StatefulWidget {
  @override
  _RatingExampleState createState() => _RatingExampleState();
}

class _RatingExampleState extends State<RatingExample> {
  var num = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WaveAppBar(
        title: 'Star Rating Control Example',
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            //Only integers are accepted, outside
            Text("Support half grain"),
            WaveRatingStar(),
            WaveRatingStar(
              selectedCount: 0.5,
            ),
            WaveRatingStar(
              selectedCount: 3.1,
            ),
            WaveRatingStar(
              selectedCount: 3.6,
              count: 10,
            ),
            SizedBox(height: 20),
            GestureDetector(
              child: Text(
                  "Support click to select, the first one supports inverse selection"),
              onTap: () {
                WaveToast.show("haha", context);
                setState(() {
                  num = 4;
                });
              },
            ),
            WaveRatingStar(
              selectedCount: num.toDouble(),
              space: 5,
              canRatingZero: true,
              onSelected: (count) {
                WaveToast.show("Selected $count", context);
              },
            ),
            SizedBox(height: 20),
            Text("custom picture, color, size"),
            WaveRatingStar(
              selectedCount: 3,
              space: 1,
              canRatingZero: true,
              onSelected: (count) {
                WaveToast.show("Selected $count", context);
              },
              starBuilder: _buildRating,
            )
          ],
        ),
      ),
    );
  }

  //custom image, size, color
  Widget _buildRating(RatingState state) {
    switch (state) {
      case RatingState.select:
        return WaveUITools.getAssetSizeImage(WaveAsset.iconStar, 16, 16,
            color: Color(0xFF3571DC));
      case RatingState.half:
        return WaveUITools.getAssetSizeImage(WaveAsset.iconStarHalf, 16, 16);
      case RatingState.unselect:
      default:
        return WaveUITools.getAssetSizeImage(WaveAsset.iconStar, 16, 16,
            color: Color(0xFFF0F0F0));
    }
  }
}
