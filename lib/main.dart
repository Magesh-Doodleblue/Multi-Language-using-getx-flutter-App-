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
  late var image = "";
  final koreanImage =
      "https://i0.wp.com/www.travelworldheritage.com/wp-content/uploads/2014/05/EIGHTEEN.png";
  final englishImage =
      "https://st2.depositphotos.com/3591429/5246/i/950/depositphotos_52462701-stock-photo-people-and-english-concept.jpg";

  final tamilImage =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Word_Tamil.svg/800px-Word_Tamil.svg.png";

  final malayalamImage =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Word_Malayalam.svg/1200px-Word_Malayalam.svg.png";
  final hindiImage =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTQc_GwoFZsq2MstOEvRipq8FCFEqqfXJbLjzL42Iq&s";
  final russianImage =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOAlHNFIsomxL1792XrID1lqmE4WNnXMUbk2VCXWgjzw&s";
//
//
  tamilLanguageChange() {
    var locale = const Locale('ta', 'IN');
    Get.updateLocale(locale);
    image = tamilImage;
  }

  englishLanguageChange() {
    var locale = const Locale('en', 'IN');
    Get.updateLocale(locale);
    image = englishImage;
  }

  hindiLanguageChange() {
    var locale = const Locale('hi', 'IN');
    Get.updateLocale(locale);
    image = hindiImage;
  }

  malayalamLanguageChange() {
    var locale = const Locale('ml', 'IN');
    Get.updateLocale(locale);
    image = malayalamImage;
  }

  russianLanguageChange() {
    var locale = const Locale('ru', 'RU');
    Get.updateLocale(locale);
    image = russianImage;
  }

  koreanLanguageChange() {
    var locale = const Locale('kr', 'KR');
    Get.updateLocale(locale);
    image = koreanImage;
  }

  void showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Please select the Language'),
          content: const Text('Here are the available languages'),
          actions: [
            Center(
              child: Wrap(
                spacing: 16,
                // runSpacing: 8,
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
                  TextButton(
                    onPressed: malayalamLanguageChange,
                    child: const Text('Malayalam'),
                  ),
                  TextButton(
                    onPressed: russianLanguageChange,
                    child: const Text('Russian'),
                  ),
                  TextButton(
                    onPressed: koreanLanguageChange,
                    child: const Text('Korean'),
                  ),
                ],
              ),
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
              onTap: () {
                showLanguageDialog(context);
              },
              child: const Icon(Icons.language)),
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
                image == ""
                    ? Hero(
                        tag: "imagehero",
                        child: Image.network(
                            "https://static.vecteezy.com/system/resources/previews/005/879/539/original/cloud-computing-modern-flat-concept-for-web-banner-design-man-enters-password-and-login-to-access-cloud-storage-for-uploading-and-processing-files-illustration-with-isolated-people-scene-free-vector.jpg"),
                      )
                    : Hero(
                        tag: "imagehero",
                        child: Image.network(
                          image,
                          width: 330,
                          height: 300,
                          fit: BoxFit.fill,
                        ),
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
