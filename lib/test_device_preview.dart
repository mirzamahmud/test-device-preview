import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:test_device_preview/home/home_page.dart';

class TestDevicePreview extends StatelessWidget {
  const TestDevicePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}
