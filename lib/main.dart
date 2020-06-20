import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:foodorderapp/fooddetail.dart';
import 'package:foodorderapp/model/food.dart';


void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.teal,
            actions: <Widget>[
              Icon(Icons.adjust),
              SizedBox(
                width: 30.0,
              ),
              Icon(Icons.crop_free),
              SizedBox(width: 15,)
            ],

          ),

      /*    bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.search),

              )
            ],
          ),*/

          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Container(
                          height: screenHeight *2,
                          width: 500,


                          decoration: BoxDecoration(
                            color: Colors.white,

                            borderRadius: BorderRadius.only(
                               // topRight: Radius.circular(50.0),
                                topLeft: Radius.circular(100.0)
                            ),
                          ),

                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,


                              children: <Widget>[
                              SingleChildScrollView(

                                child: Container(
                                    height: 350,
                                    width: screenWidth,

                                    child: ListView.builder(
                                      itemCount: foods.length,
                                      itemBuilder: (BuildContext ctxt, int index) {
                                        Food food = foods[index];
                                        return Padding(
                                            padding: const EdgeInsets.only(
                                                top: 20),
                                            child: InkWell(
                                                onTap: () =>
                                                    Navigator.push(context,
                                                        MaterialPageRoute(builder: (_) => FoodDetail(
                                                                 food: food,
                                                                )
                                                        )),
                                                child: Column(


                                                  children: <Widget>[
                                                    ListTile(
                                                        title: Text(food.name,
                                                          style: TextStyle(
                                                              fontWeight: FontWeight
                                                                  .w500),
                                                        ),
                                                        subtitle: Text(food.weight),

                                                        leading: CircleAvatar(
                                                          backgroundImage: AssetImage(food.imagePath),
                                                        ),
                                                        // trailing: Text("8:03"),
                                                        trailing: Icon(Icons.add)
                                                    ),

                                                  ],
                                                )
                                            )
                                        );
                                      }

                                    )
                                ),
                              ),

                              ],
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 180, left: 20),
                      child: Text(
                        "Healthy Food",style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    )
                  ],
                )
              ],
            ),


          ),

          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left:60.0),
            child: Container(
              height: 55,
              width: 450,


//color: Colors.tealAccent,
                 child: Row(
                   children: <Widget>[
                     Container(
                       height: 100,
                       width: 60,

                       child: Center(
                         child: Padding(
                           padding: const EdgeInsets.only(left:15.0),
                           child: Row(
                             children: <Widget>[
                               Icon(Icons.search,size: 25,)
                             ],
                           ),
                         ),
                       ),

                       decoration: BoxDecoration(
                          // color: Colors.lightBlueAccent,
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.black26, width: 2)
                       ),
                     ),
                     SizedBox(width: 15,),

                     Container(
                       height: 100,
                       width: 80,
                       //color: Colors.pink,
                       child: Center(
                         child: Padding(
                           padding: const EdgeInsets.only(left:15.0),
                           child: Row(
                             children: <Widget>[
                              // Icon(Icons.shopping_cart,size: 25,)
                               IconButton(
                                 icon:Icon(Icons.shopping_cart, size: 25,),
                               //  tooltip: 'Add to cart',
                                 onPressed: ()
                                 {


                                 },

                               )
                             ],
                           ),
                         ),
                       ),

                       decoration: BoxDecoration(
                         //  color: Colors.lightBlueAccent,
//color: Colors.yellow,
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.black26, width: 2)
                       ),
                     ),

                     SizedBox(width: 15,),

                     Container(
                       height: 100,
                       width: 120,
                       //color: Colors.blueGrey,

                       child: Padding(
                         padding: const EdgeInsets.only(left:16, top: 15),
                         child: Text("Checkout", style: TextStyle(fontSize: 18)),
                       ),

                       decoration: BoxDecoration(
                        //   color: Colors.lightBlueAccent,
                          color: Colors.blueAccent,
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(color: Colors.black26, width: 2)
                       ),
                     )
                   ],

              ),
            ),
          ),

        ),
    );
  }
}
        

