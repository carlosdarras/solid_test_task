part of 'background_color_bloc.dart';

@immutable
abstract class BackgroundColorEvent {}


class ChangeBackgroundColorRandomly extends BackgroundColorEvent{}

class ChangeBackgroundColorRandomlyByUsingFixedList extends BackgroundColorEvent{}

class ChangeBackgroundColorRandomlyByUsingRGB extends BackgroundColorEvent{}
