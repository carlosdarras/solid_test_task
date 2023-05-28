

import 'package:solid_task/view/screens/first_way/view/first_way_view.dart';
import 'package:solid_task/view/screens/second_way/view/second_way_view.dart';
import 'package:solid_task/view/screens/third_way/view/third_way_view.dart';

import '../home_barrel.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Animate(
            effects: const [FadeEffect(), MoveEffect()],
            child: Text(
              "SOLID Software Company\nTask",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.sp),
              textAlign: TextAlign.center,
            ),
          ),
          const VerticalSpacing(2),
          Animate(
            effects: [FadeEffect(delay: 200.ms), MoveEffect(delay: 200.ms)],
            child: ActionButton(
              onPressed: () {
                navigateTo(context, const FirstWayView());
              },
              text: "Randomly Hex Dec",
            ),
          ),
          const VerticalSpacing(2),
          Animate(
            effects: [FadeEffect(delay: 300.ms), MoveEffect(delay: 300.ms)],
            child: ActionButton(
              onPressed: () {
                navigateTo(context, const SecondWayView());
              },
              text: "Fixed List Of Color",
            ),
          ),
          const VerticalSpacing(2),
          Animate(
            effects: [FadeEffect(delay: 400.ms), MoveEffect(delay: 400.ms)],
            child: ActionButton(
              onPressed: () {
                navigateTo(context, const ThirdWayView());
              },
              text: "RGBA",
            ),
          ),
        ],
      ),
    );
  }
}
