import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:palo_probation/core/the_router.dart';
import 'package:palo_probation/shares/constants/the_enums.dart';
import 'package:palo_probation/shares/constants/the_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PALO Probation',
      theme: TheThemes.lightTheme,
      transitionDuration: const Duration(milliseconds: 400),
      darkTheme: TheThemes.lightTheme,
      initialRoute: Routes.home.value,
      getPages: TheRouter.getPages,
    );
  }
}
