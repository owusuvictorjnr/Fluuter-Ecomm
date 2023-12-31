import 'package:ecomm/common/widget/custom_button.dart';
import 'package:ecomm/common/widget/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../constants/global_variables.dart';

enum Auth {
  signin,
  signup,
}

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';

  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to Vitech Ecomm',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              ListTile(
                tileColor: _auth == Auth.signup
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundColor,
                title: const Text(
                  'Create Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(
                      () {
                        _auth = val!;
                      },
                    );
                  },
                ),
              ),

              if (_auth == Auth.signup)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        // Name
                        CustomTextField(
                          controller: _nameController,
                          hintText: 'Name',
                          hintTetxt: 'Name',
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Email
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Email',
                          hintTetxt: 'Email',
                        ),

                        const SizedBox(
                          height: 10,
                        ),
                        // Password
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Password',
                          hintTetxt: 'Password',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                          text: 'Sign up',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),

              // Sign in

              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(8),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        // Email
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Email',
                          hintTetxt: 'Email',
                        ),

                        const SizedBox(
                          height: 15,
                        ),
                        // Password
                        CustomTextField(
                          controller: _emailController,
                          hintText: 'Password',
                          hintTetxt: 'Password',
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        CustomButton(
                          text: 'Sign in',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundColor,
                title: const Text(
                  'Sign in ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(
                      () {
                        _auth = val!;
                      },
                    );
                  },
                ),
              )

              // Sign in
            ], // Children
          ),
        ),
      ),
    );
  }
}
