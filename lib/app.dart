import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'package:solid_task/home/view/home_view.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      );
    });
  }
}
