import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:homework_submit_platform/register/register_page.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
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