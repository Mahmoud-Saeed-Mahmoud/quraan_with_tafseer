import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pdf_render/pdf_render_widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      home: Scaffold(
        body: PdfViewer.openAsset(
          'assets/Quran25.pdf',
        ),
      ),
    );
  }
}
