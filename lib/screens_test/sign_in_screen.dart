
import 'package:final_grad_proj/app_router/app_router.dart';
import 'package:final_grad_proj/components/custom_textfield.dart';
import 'package:final_grad_proj/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Consumer<AuthProvider>(builder: (context, provider, x) {
          return Form(
              key: provider.signInKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomTextfield(
                    validation: provider.emailValidation,
                    label: 'Email',
                    controller: provider.loginEmailController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextfield(
                    validation: provider.passwordValidation,
                    label: 'Password',
                    controller: provider.passwordLoginController,
                  ),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        provider.signIn();
                      },
                      child: Text('Sign In')),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        AppRouter.appRouter
                            .goToWidgetAndReplace(SignUpScreen());
                      },
                      child: Text('Go to SignUp Page'))
                ],
              ));
        }),
      ),
    );
  }
}
