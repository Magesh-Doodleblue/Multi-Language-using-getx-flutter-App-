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
        children: [
          Hero(
            tag: "imagehero",
            child: Image.network(
              "https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg",
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Center(
            child: Column(
              children: [
                Text(
                  "Enter password".tr,
                  style: textStyleWidger(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'hello world'.tr,
                  style: textStyleWidger(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'message'.tr,
                  style: textStyleWidger(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'continue'.tr,
                  style: textStyleWidger(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'welcome'.tr,
                  style: textStyleWidger(),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter password".tr,
                  style: textStyleWidger(),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextStyle textStyleWidger() {
    return const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  }
}
