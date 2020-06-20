import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodorderapp/model/food.dart';

class FoodDetail extends StatefulWidget {
  final Food food;

  const FoodDetail({Key key, this.food}) : super(key: key);

  @override
  _FoodDetailState createState() => _FoodDetailState();
}

class _FoodDetailState extends State<FoodDetail> {
  @override
  Widget build(BuildContext context) {

    int count=1;

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("Details"),
          actions: <Widget>[
            Icon(Icons.import_export)
          ],

          backgroundColor: Colors.blue,
          elevation: 0,
          centerTitle: true,
        ),

      body: Container(
        color: Colors.blue,
        child: SingleChildScrollView(

    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(

            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Container(
                  height:screenHeight * 0.8 ,
                  width: 500,
                 color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 90,left: 16),
                        child: Text(widget.food.name,style: TextStyle(
                            color: Colors.black,
                            fontSize: 25
                        ),),

                      ),

                      Padding(
                        padding: const EdgeInsets.only(top:10, left:30),
                        child: Container(
                          height: 50,
                          width: 300,
                          //color: Colors.yellow,

                            child: Padding(
                              padding: const EdgeInsets.only(top: 12, ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text(widget.food.price, style: TextStyle(fontSize: 22),)
                                      ],
                                    ),

                                    //Divider(color: Colors.black,),
                                    SizedBox(width: 30,),

                                    Padding(
                                      padding: const EdgeInsets.only(bottom:3.0),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: 35,
                                            width: 110,

                                            decoration: BoxDecoration(
                                              color: Colors.lightBlue,
                                              borderRadius: BorderRadius.circular(10),
                                            ),

                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: IconButton(
                                                    icon: Icon(Icons.remove),

                                                  ),

                                                ),
                                                Expanded(
                                                  child: Text("2"),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(2.0),

                                                    child: Container(

                                                        decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          borderRadius: BorderRadius.circular(10),
                                                        ),

                                                        child: Icon(Icons.add)),
                                                  ),
                                                )
                                              ],

                                            ),

                                          )
                                        ],

                                  ),
                                    )

                                ],
                              ),
                            ),

                        ),
                      ),

                      SizedBox(height: 20,),

                      Center(
                        child: Container(
                          height: 200,
                          width: 320,
                           // color: Colors.purpleAccent,

                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[

                              Container(
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 10, top:15),
                                      child: Container(
                                        height: 160,
                                        width: 100,

                                        child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(right:30.0, top:20),
                                                child: Text("WEIGHT"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top:60.0),
                                                child: Text(widget.food.weight,style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20
                                                ),
                                                ),
                                              )

                                            ]
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.lightBlueAccent,
//color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: Colors.lightBlue, width: 2)
                                        ),
                                      ),
                                    )

                                ),



                              ),
                              Container(
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top:15),
                                      child: Container(
                                        height: 160,
                                        width: 100,

                                        child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(right:30.0, top:20),
                                                child: Text("CALORIES"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top:60.0),
                                                child: Text(widget.food.calories,style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20
                                                ),
                                                ),
                                              )

                                            ]
                                        ),
                                        decoration: BoxDecoration(
//color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: Colors.lightBlue, width: 2)
                                        ),
                                      ),
                                    )

                                ),

                              ),
                              Container(
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20, top:15),
                                      child: Container(
                                        height: 160,
                                        width: 100,

                                        child: Column(
                                            children: <Widget>[
                                              Padding(
                                                padding: const EdgeInsets.only(right:30.0, top:20),
                                                child: Text("VITAMIN"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(top:60.0),
                                                child: Text(widget.food.vitamin,style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                    fontSize: 20
                                                ),
                                                ),
                                              )

                                            ]
                                        ),
                                        decoration: BoxDecoration(
//color: Colors.yellow,
                                            borderRadius: BorderRadius.circular(30),
                                            border: Border.all(color: Colors.lightBlue, width: 2)
                                        ),
                                      ),
                                    )

                                ),



                              ),

                            ],
                          ),




                        ),
                      ),

                    ],
                  ),
                ),
              ),

                Center(child: Image.asset(widget.food.imagePath,height: 200,width: 200,)),

            ],
          )
        ],

    ),
    ),


      ),

      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left:55.0),
        child: Container(
          height: 60,
          width: 400,


//color: Colors.tealAccent,
          child: Row(
            children: <Widget>[
              Container(
                height: 120,
                width: 280,

                child: Row(

                  children: <Widget>[
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15,),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 15),
                    Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
                    Icon(Icons.arrow_forward_ios, color: Colors.white, size: 15),
                    SizedBox(width: 30,),
                    Center(child: Text(widget.food.total, style: TextStyle(fontSize: 20,color: Colors.white),)),

                  ],
                ),

                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.circular(20),
                  //  border: Border.all(color: Colors.black26, width: 2)
                ),
              ),

            ],
          ),
        ),
      ),


    );
  }
}
