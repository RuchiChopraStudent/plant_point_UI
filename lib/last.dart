import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_point/Details.dart';
import 'package:plant_point/Models.dart';

class last extends StatefulWidget {
  final Plant obj;

  const last( this.obj);

  @override
  _lastState createState() => _lastState();
}

class _lastState extends State<last> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 200,
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) =>
                                      Details(widget.obj)));
                        },

                        child: Container(
                          alignment: Alignment.centerLeft,
                          width:250,
                          height: 10,
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top:20),
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: 150,
                            height: 70,
                            decoration: new BoxDecoration(
                              color: Colors.black12,
                              borderRadius: new BorderRadius.only(
                                bottomLeft: const Radius.circular(60.0),
                                topLeft: const Radius.circular(60.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text(
                                  "Details",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/leaves.jpg",
                        width: 150,
                        height: 150,
                      ),
                      SizedBox(width: 150),
                      Container(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.more_vert,
                          size: 60,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "Plant Details",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(child: Text(widget.obj.Description, style: TextStyle(color: Colors.black54),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:50),
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      "assets/images/pot.jpg",
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right:50, top:15),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Pot Details",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(child: Text(widget.obj.Pot, style: TextStyle(color: Colors.black54),)),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
