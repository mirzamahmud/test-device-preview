import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_device_preview/test_device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    DevicePreview(
      isToolbarVisible: true,
      data: DevicePreviewData(), //* Configure all Properties
      enabled: !kReleaseMode, //* Not enable in release mode
      builder:
          (context) => const TestDevicePreview(), //* Root application widget
    ),
  );
}
