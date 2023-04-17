import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'drawer_tiles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.blueGrey,
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        ),
        title: const Text(
          "Navigation Drawer",
          style: TextStyle(color: Colors.white60),
        ),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Center(
        child: Container(
          color: Colors.white60,
          child: const Text("Example Of Navigation Drawer",style: TextStyle(fontSize: 20),),
        ),
      ),
    );
  }
}
