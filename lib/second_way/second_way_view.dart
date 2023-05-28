import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_task/second_way/second_way_content.dart';

import '../home/bloc/background_color_bloc/background_color_bloc.dart';

class SecondWayView extends StatelessWidget {
  const SecondWayView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BackgroundColorBloc, BackgroundColorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: context
              .read<BackgroundColorBloc>()
              .colors[context.read<BackgroundColorBloc>().backgroundColorIndex],
          body: const SecondWayContent(),
        );
      },
    );
  }
}
