import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: const DrawerScreen(),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.blueGrey,
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
        ),
        title: const Text(
          "Favorite Items",
          style: TextStyle(color: Colors.white60),
        ),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Container(
        color: Colors.white60,
      ),
    );
  }
}
