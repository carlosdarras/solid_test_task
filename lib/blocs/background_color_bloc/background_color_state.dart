part of 'background_color_bloc.dart';

@immutable
abstract class BackgroundColorState {}

class BackgroundColorInitial extends BackgroundColorState {}

///--------------------------------------------------------
class ChangeBackgroundColorSuccessState extends BackgroundColorState {}

class ChangeBackgroundColorFailState extends BackgroundColorState {}

///--------------------------------------------------------
class ChangeBackgroundColorUsingFixedListSuccessState
    extends BackgroundColorState {}

class ChangeBackgroundColorUsingFixedListFailState
    extends BackgroundColorState {}

///--------------------------------------------------------
class ChangeBackgroundColorUsingRGBSuccessState extends BackgroundColorState {}

class ChangeBackgroundColorUsingRGBFailState extends BackgroundColorState {}

///--------------------------------------------------------
