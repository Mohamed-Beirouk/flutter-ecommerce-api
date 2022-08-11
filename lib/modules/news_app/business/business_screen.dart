import 'package:flutter/material.dart';
import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supper/layout/news_app/cubit/cubit.dart';
import 'package:supper/layout/news_app/cubit/states.dart';
import 'package:supper/shared/components/components.dart';
class BusinessScreen extends StatelessWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit,NewsStates>(
     listener: (context,state){},
     builder:(context,state){
       return  ConditionalBuilder(
         condition: state is!NewsGetBusinessLoadingState,
         builder: (context) => ListView.separated(
             itemBuilder: (context,index) =>buildArticleItem(),
             separatorBuilder: (context,index) =>Container(
               width: double.infinity,
               height: 1,
               color: Colors.grey[300],
             ),
             itemCount: 10,
         ),
         fallback: (context) => Center(child: CircularProgressIndicator()) ,
       );
     }
    );
  }
}
