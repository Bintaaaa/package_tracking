import 'package:flutter/material.dart';
import 'package:latihan_clean_code/presentation/router.gr.dart';

class AppWidget extends StatelessWidget {
  // This widget is the root of your application.
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: 'Cari Paket',
      theme: ThemeData.dark(),
      builder: (BuildContextcontext, router) => router!,
    );
  }
}
