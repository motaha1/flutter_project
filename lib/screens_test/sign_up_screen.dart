
import 'package:final_grad_proj/app_router/app_router.dart';
import 'package:final_grad_proj/components/custom_textfield.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/screens_test/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Consumer<AuthProvider>(builder: (context, provider, x) {
          return Form(
              key: provider.signUpKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextfield(
                      validation: provider.requiredValidation,
                      label: 'Name',
                      controller: provider.userNameController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextfield(
                      validation: provider.phoneValidation,
                      label: 'Phone Number',
                      controller: provider.phoneController,
                      textInputType: TextInputType.phone,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextfield(
                      validation: provider.emailValidation,
                      label: 'Email',
                      controller: provider.registerEmailController,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextfield(
                      validation: provider.passwordValidation,
                      label: 'Password',
                      controller: provider.passwordRegisterController,
                      isPassword: true,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          provider.SignUp();
                        },
                        child: Text('Sign Up')),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          AppRouter.appRouter
                              .goToWidgetAndReplace(SignInScreen());
                        },
                        child: Text('Go to login Page'))
                  ],
                ),
              ));
        }),
      ),
    );
  }
}
