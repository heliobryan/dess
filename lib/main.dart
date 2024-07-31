import 'package:dess/App/Source/Screens/Forms/form_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avapsi.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatat.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avatec_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avafis.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/timer.dart';
import 'package:dess/App/Source/Screens/Home/Manage/comp_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/health_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/sponsor_page.dart';
import 'package:dess/App/Source/Screens/Home/Avaliation/avaliation_page.dart';
import 'package:dess/App/Source/Screens/Home/home_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/image_manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Manage/manage_page.dart';
import 'package:dess/App/Source/Screens/Home/Passport/passport_page.dart';
import 'package:dess/App/Source/Screens/Register/initial_page.dart';
import 'package:dess/App/Source/Screens/Register/login_page.dart';
import 'package:dess/App/Source/Screens/Register/register_page.dart';
import 'package:dess/App/Source/Screens/Register/splash_page.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const DesApp(),
  );
}

class DesApp extends StatelessWidget {
  const DesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        'initialPage': (context) => const InitialPage(),
        'splashPage': (context) => const SplashPage(),
        'registerPage': (context) => const RegisterPage(),
        'form1Page': (context) => const Form1Page(),
        'form2Page': (context) => const Form2Page(),
        'form3Page': (context) => const Form3Page(),
        'homePage': (context) => const HomePage(),
        'avaliationPage': (context) => const AvaliationPage(),
        'managePage': (context) => const ManagePage(),
        'passportPage': (context) => const PassportPage(),
        'imageManagePage': (context) => const ImageManagePage(),
        'compPage': (context) => const CompPage(),
        'sponsorPage': (context) => const SponsorPage(),
        'healthPage': (context) => const HealthPage(),
        'avatecPage': (context) => const AvatecPage(),
        'avapsiPage': (context) => const AvapsiPage(),
        'cardPage': (context) => const HealthEditor(),
        'loginPage': (context) => const LoginPage(),
        'avafisPage': (context) => const AvafisPage(),
        'avatatPage': (context) => const AvatatPage(),
        'stopPage': (context) => const StopTimePage(),
        'infoPage': (context) => const InfoPage(),
      },
    );
  }
}
