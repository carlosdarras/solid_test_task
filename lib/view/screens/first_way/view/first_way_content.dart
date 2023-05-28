import '../../../common_widgets/background_changes_button.dart';
import '../../home/home_barrel.dart';

class FirstWayContent extends StatelessWidget {
  const FirstWayContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<BackgroundColorBloc>();
    return BackgroundChangesButton(event: () {
      bloc.add(ChangeBackgroundColorRandomly());
    });
  }
}
