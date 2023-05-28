
import 'package:solid_task/third_way/third_way_content.dart';

import '../home/bloc/background_color_bloc/background_color_bloc.dart';
import '../home/home_barrel.dart';

class ThirdWayView extends StatelessWidget {
  const ThirdWayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackgroundColorBloc, BackgroundColorState>(
      builder: (context, state) {
        var bloc = context.read<BackgroundColorBloc>();
        return Scaffold(
          backgroundColor: bloc.color,
          body: const ThirdWayContent(),
        );
      },
    );
  }
}
