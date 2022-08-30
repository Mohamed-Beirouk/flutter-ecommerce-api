import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:supper/modules/basics/login/login_screen.dart';
import 'package:supper/shared/components/components.dart';

import '../../../library/simple.dart';
import '../login_shop/cubit/cubit.dart';
import '../login_shop/cubit/states.dart';

class RegisterScreen extends StatelessWidget {
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var nomController = TextEditingController();
    var prenomController = TextEditingController();
    var emailController = TextEditingController();
    var usernameController = TextEditingController();
    var passwordController = TextEditingController();
    var telephoneController = TextEditingController();
    var sexeController = TextEditingController();
    var descriptionController = TextEditingController();
    var adresseController = TextEditingController();
    var confirmepasswordController = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit,ShopLoginStates>(
        listener: (context,state){
          if(state is ShopLoginSuccessState)
          {
            if(state.loginModel.status == true)
            {
              print(state.loginModel.message);
              //print(state.loginModel.data!.token);

              Fluttertoast.showToast(
                  msg: '${state.loginModel.message}',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 8,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              ).then(
                      (value){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));

                  }
              );

            }else{
              print(state.loginModel.message);
              Fluttertoast.showToast(
                  msg: '${state.loginModel.message}',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 5,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
            }
          }
        },
        builder: (context,state){
          return Scaffold(
            appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Registrer',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'S\'inscrire maintenant et devenir un client',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        defaultTextField(
                          controller: nomController,
                          type: TextInputType.text,
                          text: 'Nom',
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultTextField(
                          controller: prenomController,
                          type: TextInputType.text,
                          text: 'Prenom',
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultTextField(
                          controller: emailController,
                          type: TextInputType.emailAddress,
                          text: 'Email adresse',
                          prefix: Icons.email,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultTextField(
                          controller: usernameController,
                          type: TextInputType.text,
                          text: 'Username',
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultTextField(
                          controller: telephoneController,
                          type: TextInputType.number,
                          text: 'Telephone',
                          prefix: Icons.phone,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        defaultTextField(
                          controller: sexeController,
                          type: TextInputType.text,
                          text: 'Sexe',
                          prefix: Icons.person,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        defaultTextField(
                          controller: descriptionController,
                          type: TextInputType.text,
                          text: 'Description',
                          prefix: Icons.comment,
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        defaultTextField(
                          controller: passwordController,
                          isPassword:ShopLoginCubit.get(context).isPassword,
                          type: TextInputType.visiblePassword,
                          suffix: ShopLoginCubit.get(context).suffix,
                          suffixFunction: ()
                          {
                            ShopLoginCubit.get(context).changePasswordVisibility();
                          },
                          text: 'Password',

                          prefix: Icons.lock_outline,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        defaultTextField(
                          controller: confirmepasswordController,
                          isPassword:ShopLoginCubit.get(context).isPassword,
                          type: TextInputType.visiblePassword,
                          suffix: ShopLoginCubit.get(context).suffix,
                          suffixFunction: ()
                          {
                            ShopLoginCubit.get(context).changePasswordVisibility();
                          },
                          text: 'Confirme password',

                          prefix: Icons.lock_outline,
                        ),
                        SizedBox(
                          height: 15,
                        ),

                        defaultButton(function: ()
                        {

                          DioHaddemine().fetchPrduit(nomController.text,prenomController.text,emailController.text,usernameController.text,passwordController.text,telephoneController.text,sexeController.text,descriptionController.text,adresseController.text);

                        },
                          text: 'Registrer',
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Vous avez déjè un compte?'),
                            TextButton(onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                            }, child: Text(
                              ' connecter ',
                              style: TextStyle(
                                color: Colors.cyan,
                              ) ,
                            ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}