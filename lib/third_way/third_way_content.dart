import 'package:solid_task/home/home_barrel.dart';
import '../common_widgets/background_changes_button.dart';
import '../home/bloc/background_color_bloc/background_color_bloc.dart';

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
