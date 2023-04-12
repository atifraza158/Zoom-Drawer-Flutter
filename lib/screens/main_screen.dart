import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';

class MainScreen extends StatelessWidget {
  final zoomDrawerController;

  MainScreen({this.zoomDrawerController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zoom Drawer'),
        leading: GestureDetector(
          onTap: () {
            zoomDrawerController.toggle();
          },
          child: Icon(Icons.menu),
        ),
      ),
    );
  }
}
