import '../second_way_barrel.dart';

class SecondWayView extends StatelessWidget {
  const SecondWayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackgroundColorBloc, BackgroundColorState>(
      builder: (context, state) {
        var bloc = context.read<BackgroundColorBloc>();
        return Scaffold(
          backgroundColor: bloc.colors[bloc.backgroundColorIndex],
          body: const SecondWayContent(),
        );
      },
    );
  }
}
