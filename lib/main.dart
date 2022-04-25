import 'package:demo/Pages/contribute.dart';
import 'package:demo/Pages/learnmore/know_your_rights.dart';
import 'package:demo/Pages/page_view.dart';
import 'package:demo/components/routes.dart';
import 'package:demo/Pages/gethelp.dart';
import 'package:demo/Pages/learnmore.dart';
import 'package:demo/Pages/login_page.dart';
import 'package:demo/Pages/pagetwo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Pages/gethelp/distract.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "assets/images/settings.json/apiKey",
          appId: "assets/images/settings.json/appId",
          messagingSenderId: "assets/images/settings.json/messagingSenderId",
          projectId: "assets/images/settings.json/projectId",
          storageBucket: "assets/images/settings.json/storageBucket"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.loginRoute: ((context) => LoginPage()),
        MyRoutes.pageTwo: ((context) => SecondPage()),
        MyRoutes.ContriPage: ((context) => Contribute()),
        MyRoutes.HelpPage: ((context) => GetHelp()),
        MyRoutes.LearnPage: ((context) => LearnMore()),
        LearnMoreRoutes.KnowRightsPage: ((context) => KnowYourRights()),
        GetHelpRoutes.DistractPage: ((context) => DistractPage()),
        MyRoutes.pageView: ((context) => MyPageView())
      },
    );
  }
}
