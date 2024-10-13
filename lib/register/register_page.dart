import 'package:flutter/material.dart';
import 'package:homework_submit_platform/login/login_form.dart';
import 'package:homework_submit_platform/register/register_form.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Text("注册" ,style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),),
              RegisterForm()
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
    );
  }
}