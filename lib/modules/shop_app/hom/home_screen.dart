import 'package:flutter/material.dart';
import 'package:supper/modules/shop_app/product/product_screen.dart';
import 'package:supper/styles/icon_broken.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Container(
                height: 100,
                width: 450,
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A Summer Surprise',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Cashback 20%',
                        style:TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: MaterialButton(
                            onPressed: ()
                            {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
                            },
                            child: Icon(

                              IconBroken.Buy,
                              size: 35,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('E-commerce'
                          ,style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Icon(
                            IconBroken.Filter,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Pharmacines'
                          ,style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Icon(
                            IconBroken.Buy,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Restaurant'
                          ,style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Icon(
                            IconBroken.Buy,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Livraison'
                          ,style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Icon(
                            IconBroken.Plus,
                            size: 35,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('More'
                          ,style:TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Special Category',
                style:TextStyle(
                    fontSize: 20
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));

                      },
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image(
                          fit: BoxFit.cover,
                          image:
                          AssetImage(
                            'assets/images/Image Banner 2.png',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image(
                            fit: BoxFit.cover,
                            image:
                            AssetImage('assets/images/Image Banner 3.png'))
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Image(
                            fit: BoxFit.cover,
                            image:
                            AssetImage('assets/images/external-content.duckduckgo.com.jpg'))
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Popular Products',
                style:TextStyle(
                    fontSize: 20
                ),
              ),
            ),
            SizedBox(
              height: 28,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black12
                ),
                child: Image(image:

                AssetImage(
                  'assets/images/Image Banner 2.png',
                ),
                ),

              ),
            ),

          ],
        ),
      ),

    );
  }
}
