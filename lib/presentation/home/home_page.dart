import 'package:flutter/material.dart';
import 'package:latihan_clean_code/presentation/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () => context.router.pushNamed('/location'),
          child: Text("Pindah ke location"),
        ),
      ),
    );
  }
}
