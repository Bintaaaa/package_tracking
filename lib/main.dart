import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:latihan_clean_code/injection.dart';
import 'package:latihan_clean_code/presentation/app_widget.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
