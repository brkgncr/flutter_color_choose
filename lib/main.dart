import 'package:flutter/material.dart';
import 'package:flutter_renk_secici/pages/color_picker_page.dart';
import 'package:flutter_renk_secici/theme/app_theme.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: AppTheme.theme, home: ColorPickerPage());
  }
}
