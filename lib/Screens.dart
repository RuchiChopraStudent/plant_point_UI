import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_point/Models.dart';

import 'Details.dart';
import 'FirstScreen.dart';

class MyPlantShop extends StatefulWidget {
  final Plant plant;

  const MyPlantShop( this.plant);



  @override
  _MyPlantShopState createState() => _MyPlantShopState();
}

class _MyPlantShopState extends State<MyPlantShop> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Container(
                color: Colors.white,
                child: Center(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      MyShop(),));
                        },
                        child: Icon(
                          Icons.arrow_back
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0, left: 15),
                        child: Text(
                          widget.plant.Name,
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0, left: 25),
                  child: Center(
                    child: Text(
                      widget.plant.extra,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 250,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(60.0),
                    )),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Container(
                          height: 175,
                          width: 500,
                          child: Image.asset(
                            widget.plant.Image,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        widget.plant.Price,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 200),
                      child: Container(
                        decoration: new BoxDecoration(
                            color: Colors.green, shape: BoxShape.circle),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 25, right: 15),
                child: Container(

                    child: Text("Planting", style: TextStyle(fontSize: 30),)),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 20),
                    child: Container(
                        height: 120,
                        width: 120,
                        decoration: new BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child: Text(widget.plant.WaterReq, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Text("Water", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],

                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 20),
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: new BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:25.0),
                              child: Text(widget.plant.Temperature, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.only(top:20.0),
                              child: Text("Sunshine", style: TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],

                      ),),
                  ),
                ],
              ),
              InkWell(onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            Details(widget.plant)));
              },
                child: Container(
                  height: 50,
                  child: Icon(
                    Icons.arrow_downward
                  ),


                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
