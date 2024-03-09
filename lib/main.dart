import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/route.dart';
import 'screens/HomeScreen/HomeScreenPage.dart';

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
    home: HomeScreenPage(),
     // home: TestDashBoardScreen(),
     //home: CreateNewStaffs(),
      routes: APP_ROUTES,
    );
  }
}

