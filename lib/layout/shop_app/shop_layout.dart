import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supper/modules/basics/login/login_screen.dart';
import 'package:supper/shared/components/components.dart';
import 'package:supper/styles/icon_broken.dart';

import '../../modules/shop_app/register_shope/register_screen.dart';
import '../../network/local/cache_helper.dart';
import '../../shared/components/icon_btn_with_counter.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class ShopLayout extends StatelessWidget {
  const ShopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>ShopCubit(),
      child: BlocConsumer<ShopCubit,ShopStates>(
        listener: (context,state){},
        builder: (context,state){
          var cubit = ShopCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Container(
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12
                ),
                child: TextField(
                  onChanged: (value) => print(value),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 9,
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "Search product",
                      prefixIcon: Icon(IconBroken.Search)),
                ),
              ),
              actions: [
                IconButton(onPressed: (){

                }, icon:CircleAvatar(
                  radius:50,
                  backgroundColor: Colors.black12,
                  child: Icon(
                    IconBroken.Buy,
                     size: 30,color: Colors.black,
                  ),
                ),
                ),
                IconButton(onPressed: (){

                }, icon:CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.black12,
                  child: Icon(
                    IconBroken.Notification,
                    size: 30,color: Colors.black,
                  ),
                ),
                ),
              ],
            ),
          body: cubit.bottomScreen[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index)
              {
                cubit.changeBottom(index);
              },
              currentIndex: cubit.currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                      IconBroken.Home),
                label: 'home'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      IconBroken.Heart

                    ),
                    label: 'favorite'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        IconBroken.Chat),
                    label: 'chats'
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                        IconBroken.Setting),
                    label: 'settings'
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
