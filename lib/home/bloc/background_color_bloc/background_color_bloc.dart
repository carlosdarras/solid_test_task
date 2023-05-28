import 'dart:math' as math;
import 'package:solid_task/first_way/view/first_way_content.dart';
import 'package:solid_task/home/home_barrel.dart';
import 'package:solid_task/third_way/view/third_way_content.dart';

part 'background_color_event.dart';

part 'background_color_state.dart';

class BackgroundColorBloc
    extends Bloc<BackgroundColorEvent, BackgroundColorState> {
  BackgroundColorBloc() : super(BackgroundColorInitial()) {
    on<ChangeBackgroundColorRandomly>(_onChangeBackgroundColorRandomly);
    on<ChangeBackgroundColorRandomlyByUsingFixedList>(
        _onChangeBackgroundColorRandomlyByUsingFixedList);
    on<ChangeBackgroundColorRandomlyByUsingRGB>(
        _onChangeBackgroundColorRandomlyByUsingRGB);
  }

  ///======== [VARIABLES] ========\\\
  final math.Random random = math.Random();

  Color backgroundColor = Colors.white;

  List<Color> colors = [
    Colors.white,
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  int backgroundColorIndex = 0;

  Color color = const Color(0xFFFFFFFF);

  ///======== [EVENT_HANDLING] ========\\\

  ///----------- [ChangeBackgroundColorRandomly] -----------\\\
  /// * this event handel change colors process -
  /// By multiply nextDouble (Generates random floating in the range from 0.0, inclusive, to 1.0, exclusive.)
  /// and White color 0xFFFFFF (Hex-decimal)
  /// then we retrieve it to int
  /// * we use it in [FirstWayContent] in [BackgroundChangesButton]
  void _onChangeBackgroundColorRandomly(
    ChangeBackgroundColorRandomly event,
    Emitter emit,
  ) {
    try {
      backgroundColor =
          Color((random.nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
      emit(ChangeBackgroundColorSuccessState());
    } catch (e) {
      emit(ChangeBackgroundColorFailState());
    }
  }

  ///----------- [ChangeBackgroundColorRandomlyByUsingFixedList] -----------\\\
  /// * this event handel change colors process with fixed list - by changing index of list
  /// * we use it in [SecondWayContent] in [BackgroundChangesButton]
  void _onChangeBackgroundColorRandomlyByUsingFixedList(
    ChangeBackgroundColorRandomlyByUsingFixedList event,
    Emitter emit,
  ) {
    try {
      backgroundColorIndex = random.nextInt(colors.length);
      emit(ChangeBackgroundColorUsingFixedListSuccessState());
    } catch (e) {
      emit(ChangeBackgroundColorUsingFixedListFailState());
    }
  }

  ///----------- [ChangeBackgroundColorRandomlyByUsingRGB] -----------\\\
  /// * this event handel change colors process with fixed list -
  /// by changing (RGB & A) Randomly
  /// * we use it in [ThirdWayContent] in [BackgroundChangesButton]
  void _onChangeBackgroundColorRandomlyByUsingRGB(
    ChangeBackgroundColorRandomlyByUsingRGB event,
    Emitter emit,
  ) {
    try {
      color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
      emit(ChangeBackgroundColorUsingRGBSuccessState());
    } catch (e) {
      emit(ChangeBackgroundColorUsingRGBFailState());
    }
  }
}
