import 'package:flutter/material.dart';
import 'package:inidiahiringg/Utils/Routes/Routes.dart';
import 'package:inidiahiringg/Utils/Routes/Routes_Name.dart';
import 'View/Login_Screen.dart';
import 'View/Profile_Setup.dart';

void main() {
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade200),
        useMaterial3: true,
      ),
     initialRoute: RoutesName.splash,
    onGenerateRoute: Routes.generateRoutes,
    );
  }
}


