import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supper/modules/shop_app/detail_product/detail_product.dart';
import 'package:supper/shared/components/icon_btn_with_counter.dart';
import 'package:supper/shared/components/size_config.dart';

import '../../../library/postitem.dart';
import '../../../styles/icon_broken.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    var listUsers=fetchUsers();
    return
      Scaffold(
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
          body: FutureBuilder<List<ProduitModel>>(
            future: listUsers,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.separated(
                    itemBuilder: (context, index) {
                      var user = (snapshot.data as List<ProduitModel>)[index];
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(15)
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: ()
                                  {
                                  },
                                  child: ClipOval(
                                    child: Image.network(
                                      "https://img.directindustry.fr/images_di/photo-g/30589-8512626.jpg",
                                      height: 100,
                                      width: 100,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 50,),
                                Column(
                                  children: [
                                    Text(user.nom, style: TextStyle( fontWeight: FontWeight.bold, fontSize: 22)),

                                    SizedBox(height: 5),
                                    Text(user.description),
                                    // SizedBox(height: 5),
                                    // Text(user.fr.telephone + " " + user.fr.nom_boutique +" " +user.fr.status +" " + user.fr.user.nom),
                                    //
                                    SizedBox(height: 5),
                                    Text(user.prix),
                                    SizedBox(height: 5),
                                    Text(user.nom),

                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    CupertinoIcons.heart,
                                    color: Colors.redAccent,
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    CupertinoIcons.bookmark,
                                    color: Colors.black54,
                                  ),
                                  onPressed: () {},
                                ),
                                Spacer(),
                                IconButton(
                                  icon: Icon(
                                    CupertinoIcons.hand_thumbsdown,
                                    color: Colors.blueAccent,
                                  ),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: Icon(
                                    CupertinoIcons.hand_thumbsup,
                                    color: Colors.blueAccent,
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),

                          ],
                        ),

                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: (snapshot.data as List<ProduitModel>).length);
              } else if (snapshot.hasError) {
                return Center( child: Text("${snapshot.error}"));
              }
              return Center(
                child: CircularProgressIndicator(backgroundColor: Colors.cyanAccent),
              );
            },
          ));
  }
}
