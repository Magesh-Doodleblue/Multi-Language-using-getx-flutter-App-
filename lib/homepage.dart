// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage".tr),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 200,
          ),
        ],
      ),
    );
  }
}
