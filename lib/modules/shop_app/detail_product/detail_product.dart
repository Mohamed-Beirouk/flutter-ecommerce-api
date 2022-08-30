import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supper/library/postitem.dart';

Future<List<ProduitModel>> detailproduit() async {

  Response response = await Dio().get('http://sup-er-app.herokuapp.com/apis/produit/1',
      options: Options(
          headers: {
            'Authorization':'token 5f8fadc4dd7c8f369ef29e8fef61776df2dd3634'
          }
      ) );
  if (response.statusCode == 200) {
    var getUsersData = response.data as List;
    var listUsers = getUsersData.map((i) => ProduitModel.fromJSON(i)).toList();
    return Future.value(listUsers) ;
  } else {
    throw Exception('Failed to load users');
  }
}

class DetailProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var listUsers=detailproduit();
    return
      Scaffold(
          body: FutureBuilder<List<ProduitModel>>(
            future: listUsers,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var user = (snapshot.data as List<ProduitModel>)[0];
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

                              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailProduct()));

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
