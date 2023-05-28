import 'package:solid_task/second_way/second_way_barrel.dart';

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
