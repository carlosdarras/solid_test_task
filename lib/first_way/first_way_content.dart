import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solid_task/common_widgets/background_changes_button.dart';
import 'package:solid_task/home/bloc/background_color_bloc/background_color_bloc.dart';

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
