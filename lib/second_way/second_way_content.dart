import 'package:solid_task/home/bloc/background_color_bloc/background_color_bloc.dart';
import 'package:solid_task/home/home_barrel.dart';

import '../common_widgets/background_changes_button.dart';

class SecondWayContent extends StatelessWidget {
  const SecondWayContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<BackgroundColorBloc>();
    return BackgroundChangesButton(event: () {
      bloc.add(ChangeBackgroundColorRandomlyByUsingFixedList());
    });
  }
}
