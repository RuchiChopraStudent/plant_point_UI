import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_point/Models.dart';

import 'Screens.dart';

class MyShop extends StatefulWidget {
  @override
  _MyShopState createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "The Plant Point",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Text("The Plant Point", style: TextStyle(fontSize: 45,color: Colors.grey),),
            SizedBox(height: 25,),

            Container(
              width: 350,
              height: 200,
              child: Image.asset(
                  "assets/images/nursery.jpg",
                  fit: BoxFit.fill),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Shop online with us", style: TextStyle(fontSize: 25),),
            ),


            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 650,
                    width: 600,
                    child: InkWell(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: plantlist.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                MyPlantShop(plantlist[index])));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height: 150,
                                      width: 150,
                                      child:
                                      Image.asset(plantlist[index].Image),
                                    ),
                                  ),
                                ),
                                Text(
                                  plantlist[index].Name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  plantlist[index].Price,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            );
                          }),
                    ),
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}


