import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supper/layout/news_app/cubit/states.dart';
import 'package:supper/modules/news_app/business/business_screen.dart';
import 'package:supper/modules/news_app/science/science_screen.dart';
import 'package:supper/modules/news_app/settings/settings_screen.dart';
import 'package:supper/modules/news_app/sports/sport_screen.dart';
import 'package:supper/network/remote/dio_helper.dart';

class NewsCubit extends Cubit <NewsStates>
{
  NewsCubit():super(NewsInitialState());

  static NewsCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(
      Icons.business,
    ),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.sports,
      ),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.science,
      ),
      label: 'Science',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.settings,
      ),
      label: 'settings',
    ),

  ];

  List<Widget> screens = [
    BusinessScreen(),
    SportScreen(),
    ScienceScreen(),
    SettingsScreen(),
  ];

  void changeBottomNavBar(int index)
  {
    currentIndex = index;
    emit(NewsBottomNavState());
  }

  List<dynamic> business = [];

  void getBusiness()
  {
    emit(NewsGetBusinessLoadingState());

    DioHelper.getData(
      url: 'apis/produit',
      //8156ac26e65092dcfda98a7fd7f0fb343166ffa0
      query: {
        "id": 1,
        "available": true,
        "nom": "Iphone 8",
        "prix": "120.0000000",
        "description": "Noire",
        "image": "https://sup-er-app.herokuapp.com/7.jpg",
        "fournisseurs": 34,
        "marqueprives": 1,
        "categories": 1
      },).then((value)
    {
      print(value.data.toString());
      business = value.data;
      print(business);
      emit(NewsGetBusinessSuccessState());
    }).catchError((error){
      print(error.toString());
      emit(NewsGetBusinessErrorState(error.todtring()));
    });
  }
}