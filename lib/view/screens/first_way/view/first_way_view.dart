
import '../first_way_barrel.dart';

class FirstWayView extends StatelessWidget {
  const FirstWayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackgroundColorBloc, BackgroundColorState>(
      builder: (context, state) {
        var bloc = context.read<BackgroundColorBloc>();
        return Scaffold(
          backgroundColor: bloc.backgroundColor,
          body: const FirstWayContent(),
        );
      },
    );
  }
}
