import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iovuserform/connections/sheet_api.dart';
import 'package:iovuserform/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SheetApi.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'IOVRVF Forms',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}
