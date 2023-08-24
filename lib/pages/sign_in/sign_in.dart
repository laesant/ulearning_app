import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ulearning_app/pages/sign_in/widgets/sign_in_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            buildThirdPartyLogin(context),
            reusableText("Ou use sua conta de e-mail para fazer login"),
            Padding(
                padding: EdgeInsets.only(top: 40.h, left: 25.w, right: 25.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      buildTextField(
                          "Digite o seu endereço de email", Icons.person),
                      SizedBox(height: 20.h),
                      reusableText("Senha"),
                      buildTextField("Digite o sua senha", Icons.lock,
                          obscureText: true),
                      SizedBox(height: 6.h),
                      forgotPassword(),
                      SizedBox(height: 40.h),
                      buildLogInAndRegButton("Entrar", context,
                          buttonColor: Theme.of(context).primaryColor,
                          withEdge: false),
                      SizedBox(height: 20.h),
                      buildLogInAndRegButton("Cadastrar", context,
                          withEdge: true)
                    ]))
          ],
        ),
      )),
    );
  }
}
