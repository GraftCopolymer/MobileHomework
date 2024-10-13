import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_submit_platform/register/register_page.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                label: Text("学号")
              ),
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "请输入学号";
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text("密码")
              ),
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "请输入密码";
                }
              },
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){

                    }
                  },
                  child: Text("登录")
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: (){
                    Get.to(()=>RegisterPage());
                  },
                  child: Text("注册")
                ),
              ],
            ),
            
          ],
        )
      ),
    );
  }
}