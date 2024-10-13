import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:homework_submit_platform/login/login_form.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff9b0d14))),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff9b0d14).withAlpha(100),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: Colors.grey.withAlpha(120),
                )
              ]
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("登录" ,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
                LoginForm()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: 70,
          color: Color(0xff9b0d14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Image.asset(
                    "assets/sduonline.png",
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("学生在线 - 移动开发部作业提交系统", style: TextStyle(color: Colors.white),),
                  Text("© 2024 学生在线 保留所有权利", style: TextStyle(color: Colors.white),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
