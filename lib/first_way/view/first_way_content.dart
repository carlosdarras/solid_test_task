import 'package:solid_task/first_way/first_way_barrel.dart';

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
