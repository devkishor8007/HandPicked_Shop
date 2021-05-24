import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:handpicked_shop/view_screen/navbar/bootomNavBar.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HandPicked",
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
