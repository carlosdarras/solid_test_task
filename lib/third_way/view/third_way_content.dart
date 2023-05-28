import 'package:solid_task/third_way/third_way_barrel.dart';

class ThirdWayContent extends StatelessWidget {
  const ThirdWayContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackgroundChangesButton(event: () {
      context
          .read<BackgroundColorBloc>()
          .add(ChangeBackgroundColorRandomlyByUsingRGB());
    });
  }
}
