import 'package:flutter/material.dart';
import 'package:supper/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child:Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey ,
              child: Column(
              children: [
                Text(
                  'login',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(
                  height: 40,
                ),
                defaultFormField(
                    controller: emailController,
                    type: TextInputType.emailAddress,
                    // textForUnValid: 'Enter your email',

                    hint: 'email address',
                    prefix:Icons.email,
                ),
                SizedBox(
                  height: 20,
                ),
              defaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  // textForUnValid: 'Enter your password',
                  hint: 'password',
                  prefix:Icons.lock,
                isPassword: isPassword,
                suffixPressed:()
                {
                  setState(() {
                    isPassword = !isPassword;
                              });
                  },
                suffix: isPassword? Icons.visibility :Icons.visibility_off,
              ),
                SizedBox(
                  height: 30,
                ),
                defaultButton(

                text:'login',
                    function: ()
                {
                  // if (formKey.currentState!.validate() ==
                  //     true){
                  print(emailController.text);
                  print(passwordController.text);
                  //}
                },
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  children: [
                    Text(
                      'Don\'t have account?',
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(
                      'Register Now',
                    ),
                    ),

                  ],
                ),
              ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
