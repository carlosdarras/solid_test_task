import 'package:solid_task/home/bloc/background_color_bloc/background_color_bloc.dart';
import 'package:solid_task/home/home_barrel.dart';
import 'first_way_content.dart';

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
