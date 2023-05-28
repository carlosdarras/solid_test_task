import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../home/bloc/background_color_bloc/background_color_bloc.dart';

void navigateTo(BuildContext context, Widget widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<BackgroundColorBloc>(),
          child: widget,
        ),
      ),
    );
