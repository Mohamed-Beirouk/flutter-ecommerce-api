import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:supper/layout/shop_app/shop_layout.dart';
import 'package:supper/modules/shop_app/login_shop/cubit/cubit.dart';
import 'package:supper/modules/shop_app/login_shop/cubit/states.dart';
import 'package:supper/modules/shop_app/register_shope/register_screen.dart';
import 'package:supper/network/local/cache_helper.dart';
import 'package:supper/shared/components/components.dart';



class LoginScreen extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return BlocProvider(
      create: (BuildContext context) => ShopLoginCubit(),
      child: BlocConsumer<ShopLoginCubit,ShopLoginStates>(
        listener: (context,state){
          if(state is ShopLoginSuccessState)
          {
            if(state.loginModel.status == true)
            {
              print(state.loginModel.message);
              print(state.loginModel.token);

              // CacheHelper.saveData(key: 'token', value: state.loginModel.token).then((value){
              //   navigateAndFinish(context, ShopLayout(),);
              // });

              Fluttertoast.showToast(
                  msg: '${state.loginModel.message}',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  timeInSecForIosWeb: 8,
                  backgroundColor: Colors.green,
                  textColor: Colors.white,
                  fontSize: 16.0
              );
              navigateAndFinish(context, ShopLayout(),);

            }else{
              print(state.loginModel.message);

              showToast(
                  text: '${state.loginModel.message}',
                  state: ToastStates.ERROR,
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
                          'LOGIN',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'login now to browse our hot offers',
                          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        defaultTextField(
                          controller: emailController,
                          type: TextInputType.text,
                          text: 'Name',
                          prefix: Icons.person,
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
                          height: 15,
                        ),


                        ConditionalBuilder(
                          condition: state is! ShopLoginLoadingState,
                          builder: (context) => defaultButton(
                              function: ()
                              {
                                if(formkey.currentState!.validate())
                                {
                                  ShopLoginCubit.get(context).userLogin(
                                      username: emailController.text,
                                      password: passwordController.text,
                                  );

                                }

                              },
                              text: 'LOGIN',

                          ),
                          fallback: (context) => Center(child: CircularProgressIndicator()),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account ?'),
                            TextButton(onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                            }, child: Text(
                              ' register ',
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
