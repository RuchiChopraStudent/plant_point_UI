import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_point/Models.dart';

import 'Screens.dart';
import 'app_icons.dart';
import 'last.dart';

class Details extends StatefulWidget {
  final Plant obj;

  const Details( this.obj);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  get index => plantlist[this.index];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                child: Row(
                  children: [

                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    MyPlantShop(widget.obj)));
                      },

                      child: Container(
                        alignment: Alignment.centerLeft,
                        width:110,
                        height: 10,
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    Icon(
                      Icons.local_florist,
                      color: Colors.white,
                      size: 35,
                    ),
                    Text(
                      "The Plant Point",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  alignment: Alignment.bottomLeft,
                  child: Column(children: [
                    Text(
                      "Product",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                    Text(
                      "overview",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white),
                    ),
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(CustomIcons.water_drop,color: Colors.white,
                      size: 24,),
                    SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Water",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      widget.obj.PlantingWater,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(CustomIcons.water,color: Colors.white,
                      size: 24,),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Humidity",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      plantlist[1].Humidity,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  children: [
                    Icon(CustomIcons.ruler,color: Colors.white,
                      size: 24,),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Size",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Text(
                      plantlist[1].Size,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height:34),
            Padding(
              padding: const EdgeInsets.only(left: 40.0, bottom: 10),
              child: Container(
                width: 380,
                height: 70,
                decoration: new BoxDecoration(
                  color: Colors.black12,
                  borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(60.0),
                    topLeft: const Radius.circular(60.0),
                  ),
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top:10),
                      child: Container(
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 80),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            "Delivery Infomation",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 40.0, bottom: 10, top:10),
              child: Container(
                width: 380,
                height: 70,
                decoration: new BoxDecoration(
                  color: Colors.black12,
                  borderRadius: new BorderRadius.only(
                    bottomLeft: const Radius.circular(60.0),
                    topLeft: const Radius.circular(60.0),
                  ),
                ),

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0, top:10),
                      child: Container(
                        child: Icon(
                          Icons.add,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 80),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Center(
                          child: Text(
                            "Returns",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),


            Row(
              children: [
                Container(
                  width:250,
                  height: 10,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  last(widget.obj)));
                    },
                    child: Icon(Icons.arrow_downward),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:33.20),
                  child: Stack(

                    children: [
                      Container(


                        height: 60,
                        width: 160,
                        decoration: new BoxDecoration(
                            color: Colors.black87,
                            borderRadius: new BorderRadius.only(
                              topLeft: const Radius.circular(120.0),

                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, top: 20),
                        child: Container(
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 35,

                          ),
                        ),
                      ),
                    ],
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
