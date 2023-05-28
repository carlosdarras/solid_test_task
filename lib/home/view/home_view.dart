

import 'package:solid_task/home/home_barrel.dart';

import '../bloc/background_color_bloc/background_color_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BackgroundColorBloc(),
      child: const Scaffold(
        body: HomeContent(),
      )
    );
  }
}
