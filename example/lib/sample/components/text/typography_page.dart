import 'package:waveui/waveui.dart';

class TypographyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WaveScaffold(
      isBlurred: true,
      appBar: WaveAppBar(
        title: Text("Typography"),
        isBlurred: true,
      ),
      body: ListView(
        children: [
          WaveCard(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    "This is a titleLarge. Lorem ipsum dolor sit amet. In accusamus sint aut minima optio quo officiis iure aut modi nemo.",
                    style: Get.textTheme.titleLarge),
                SizedBox(height: 16),
                Text(
                    "This is a titleMedium. Lorem ipsum dolor sit amet. In accusamus sint aut minima optio quo officiis iure aut modi nemo.",
                    style: Get.textTheme.titleMedium),
                SizedBox(height: 16),
                Text(
                    "This is a titleSmall. Lorem ipsum dolor sit amet. In accusamus sint aut minima optio quo officiis iure aut modi nemo.",
                    style: Get.textTheme.titleSmall),
                SizedBox(height: 36),
                Text("This is a labelLarge", style: Get.textTheme.labelLarge),
                SizedBox(height: 16),
                Text("This is a labelMedium", style: Get.textTheme.labelMedium),
                SizedBox(height: 16),
                Text("This is a labelSmall", style: Get.textTheme.labelSmall),
                SizedBox(height: 36),
                Text("This is a headlineLarge",
                    style: Get.textTheme.headlineLarge),
                SizedBox(height: 16),
                Text("This is a headlineMedium",
                    style: Get.textTheme.headlineMedium),
                SizedBox(height: 16),
                Text("This is a headlineSmall",
                    style: Get.textTheme.headlineSmall),
                SizedBox(height: 36),
                Text("Display Large", style: Get.textTheme.displayLarge),
                SizedBox(height: 16),
                Text("Display Medium", style: Get.textTheme.displayMedium),
                SizedBox(height: 16),
                Text("This is a displaySmall",
                    style: Get.textTheme.displaySmall),
                SizedBox(height: 36),
                Text(
                    "This is a bodyLarge. Lorem ipsum dolor sit amet. In accusamus sint aut minima optio quo officiis iure aut modi nemo. Et earum fuga vel molestias corporis eum distinctio maiores ut aspernatur modi eum omnis soluta.",
                    style: Get.textTheme.bodyLarge),
                SizedBox(height: 16),
                Text(
                    "This is a bodyMedium. Lorem ipsum dolor sit amet. In accusamus sint aut minima optio quo officiis iure aut modi nemo. Et earum fuga vel molestias corporis eum distinctio maiores ut aspernatur modi eum omnis soluta.",
                    style: Get.textTheme.bodyMedium),
                SizedBox(height: 16),
                Text(
                    "This is a bodySmall. Lorem ipsum dolor sit amet. In accusamus sint aut minima optio quo officiis iure aut modi nemo. Et earum fuga vel molestias corporis eum distinctio maiores ut aspernatur modi eum omnis soluta.",
                    style: Get.textTheme.bodySmall),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
