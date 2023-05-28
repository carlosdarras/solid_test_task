import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:solid_task/app.dart';
import 'package:solid_task/observer/bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const App());
}


