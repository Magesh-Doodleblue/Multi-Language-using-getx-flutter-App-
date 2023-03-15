// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:languageapp/locale_strings.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: LocaleStrings(),
      locale: const Locale('TA', 'IN'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const loginBodyWidget(),
    );
  }
}

class loginBodyWidget extends StatefulWidget {
  const loginBodyWidget({
    super.key,
  });

  @override
  State<loginBodyWidget> createState() => _loginBodyWidgetState();
}

class _loginBodyWidgetState extends State<loginBodyWidget> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  tamilLanguageChange() {
    var locale = const Locale('ta', 'IN');
    Get.updateLocale(locale);
  }

  englishLanguageChange() {
    var locale = const Locale('en', 'IN');
    Get.updateLocale(locale);
  }

  hindiLanguageChange() {
    var locale = const Locale('hi', 'IN');
    Get.updateLocale(locale);
  }

  void showLanguageDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Please select the Language'),
          content: const Text('Here are the available languages'),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: tamilLanguageChange,
                  child: const Text('Tamil'),
                ),
                TextButton(
                  onPressed: englishLanguageChange,
                  child: const Text('English'),
                ),
                TextButton(
                  onPressed: hindiLanguageChange,
                  child: const Text('Hindi'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Language App".tr),
        actions: [
          GestureDetector(
              onTap: showLanguageDialog, child: const Icon(Icons.language)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 670,
            width: 360,
            decoration: BoxDecoration(
              border: Border.all(width: 3),
              color: const Color.fromARGB(253, 209, 234, 243),
            ),
            child: Column(
              children: [
                Image.network(
                  "https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg",
                  width: 330,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Enter Mail iD".tr,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: passController,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "Enter password".tr,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 240,
                    height: 53,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            width: 2.3,
                            color: Colors.black,
                            style: BorderStyle.solid,
                          ),
                          backgroundColor: Colors.black12),
                      child: Text("continue".tr),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
