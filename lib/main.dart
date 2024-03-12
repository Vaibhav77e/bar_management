import 'package:bar_management_system/extrapage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/route.dart';
import 'screens/DrawerMenu/DrawerMenuScreen.dart';
import 'screens/HomeScreen/HomeScreenPage.dart';
import 'screens/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    //home: HomeScreenPage(),
     // home: PaymentsScreen(),
     home: DrawerMenuScreen(),
      routes: APP_ROUTES,
    );
  }
}

