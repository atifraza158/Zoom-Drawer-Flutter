import 'package:flutter/material.dart';
import 'package:flutter_of_day/screens/main_screen.dart';
import 'package:flutter_of_day/screens/menu_screen.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: drawerController,
        style: DrawerStyle.defaultStyle,
        borderRadius: 24,
        angle: 0.0,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.fastOutSlowIn,
        mainScreen: MainScreen(zoomDrawerController: drawerController),
        menuScreen: MyMenuScreen(),
        showShadow: true,
        menuBackgroundColor: Colors.grey.shade300,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
      ),
    );
  }
}
