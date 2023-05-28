import 'package:solid_task/view/screens/home/home_barrel.dart';

void navigateTo(BuildContext context, Widget widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<BackgroundColorBloc>(),
          child: widget,
        ),
      ),
    );
