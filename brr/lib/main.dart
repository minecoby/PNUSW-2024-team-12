import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:brr/router/main_router.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
void main() async{
  await dotenv.load(fileName: 'assets/config/.env');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Brr',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "Pretendard" //기본 폰트 Pretendard로 설정
      ),
      initialRoute: '/login',
      getPages: MainRouter.routes,
    );
  }
}
