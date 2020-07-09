import 'package:afyasasa/presentation/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Verify Account'),
    );
  }
  
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', color: Color(0xFF00284B));
  final cardColor = Color(0xFF003B5B);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            child: Container(
              color: Colors.grey, 
              height: 0.5,), 
              preferredSize: Size.fromHeight(4.0)
          ),
          title: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                SizedBox(height:20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(children: <Widget>[
                      
                    CircleAvatar(
                      // backgroundImage:AssetImage("url/here.jpg"),
                      backgroundColor: Colors.amber,

                    ),
                    SizedBox(width: 10.0),

                    Column(
                        children: <Widget>[
                        Text("Hi, Ruth",
                        textAlign: TextAlign.left,
                        style: style, 
                        ),
                        Text("How's your health today?",
                        textAlign: TextAlign.left, 
                        style: TextStyle(fontFamily: 'Montserrat', color: Color(0xFF00284B), fontSize: 14.0), 
                        
                        ),
                      ],
                    ),
                    
                  ],
                  ),
                  IconButton(
                    icon: Icon(
                    MyFlutterApp.shopping_bag,
                    color: Color(0xFFA3A3A3),
                  ), 
                  onPressed: null)

                  ],
                ),
                SizedBox(height:5.0)
                
              ],
            ),
          ),

        ),
      ),
      body: ListView(
        children: <Widget>[
          _top(),

          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Services",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Color(0xFF00284B)),
                ),
              ]
            ),
          ),


          Container(
            height: 140,
            padding: new EdgeInsets.all(8.0),
            child: new Center(
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child:new Card(
                      margin: new EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: new 
                          Container(
                            margin: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            decoration: BoxDecoration(
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.all(10.0),
                                  child: SvgPicture.asset("svg/nurse.svg"),
                                  ),
                                  SizedBox(height: 10.0),
                                  new Text('Nursing',
                                  style: TextStyle(fontSize:16.0)),
                              ],
                            ),
                          ),
                      ),
                  ),
                  Expanded(
                    child:new Card(
                      margin: new EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: new 
                          Container(
                            padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/hospital.svg"),
                                  ),
                                  SizedBox(height: 5.0),
                                  new Text('Clinic',
                                  style: TextStyle(fontSize:16.0)),
                              ],
                            ),
                          ),
                      ),
                  ),
                  Expanded(
                    child:new Card(
                      margin: new EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: new 
                          Container(
                            padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/wellbaby.svg"),
                                  ),
                                  SizedBox(height: 15.0),
                                  new Text('Well Baby',
                                  style: TextStyle(fontSize:16.0)),
                              ],
                            ),
                          ),
                      ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            height: 140,
            padding: new EdgeInsets.all(8.0),
            child: new Center(
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child:new Card(
                      margin: new EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: new 
                          Container(
                            padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            // decoration: BoxDecoration(
                            //   borderRadius: BorderRadius.circular(15.0),
                            //   boxShadow: [
                            //     BoxShadow(
                            //       color: Colors.grey[300].withOpacity(0.5),
                            //       spreadRadius: 5,
                            //       blurRadius: 7,
                            //       offset: Offset(0, 3), // changes position of shadow
                            //     ),
                            //   ],
                            // ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/doctor.svg"),
                                  ),
                                  SizedBox(height: 5.0),
                                  new Text('Doctor',
                                  style: TextStyle(fontSize:16.0)),
                              ],
                            ),
                          ),
                      ),
                  ),
                  Expanded(
                    child:new Card(
                      margin: new EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: new 
                          Container(
                            padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/lab.svg"),
                                  ),
                                  SizedBox(height: 10.0),
                                  new Text('Lab',
                                  style: TextStyle(fontSize:16.0)),
                              ],
                            ),
                          ),
                      ),
                  ),
                  Expanded(
                    child:new Card(
                      margin: new EdgeInsets.fromLTRB(10.0, 0.0, 20.0, 10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: new 
                          Container(
                            padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/imaging.svg"),
                                  ),
                                  SizedBox(height: 10.0),
                                  new Text('Imaging',
                                  style: TextStyle(fontSize:16.0)),
                              ],
                            ),
                          ),
                      ),
                  ),
                ],
              ),
            ),
          ),


          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 4.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Color(0xFF00284B)),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 16.0),
                ),
              ]
            ),
          ),

          Container(
            height: 90,
            padding: new EdgeInsets.all(8.0),
            child: new Center(
              child: new Row(
                children: <Widget>[
                  Expanded(
                    child:new Card(
                      child: new Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: new EdgeInsets.all(8.0),
                        child: new Column(
                          children: <Widget>[
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(

                                  padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/gen_doc.svg"),
                                ),
                                SizedBox(width: 10.0),
                                new Text('General Doctor',
                                style: TextStyle(fontWeight: FontWeight.w500 , fontSize:16.0, color: Colors.white)),
                              ]
                              ),
                              ],
                          ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child:new Card(
                      child: new Container(
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: new EdgeInsets.all(8.0),
                        child: new Column(
                          children: <Widget>[
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/specialist.svg"),
                                ),
                                SizedBox(width: 10.0),
                                new Text('Specialist',
                                style: TextStyle(fontWeight: FontWeight.w500 , fontSize:16.0, color: Colors.white)),
                              ]
                              ),
                              ],
                          ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Top Doctors",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0, color: Color(0xFF00284B)),
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 16.0),
                ),
              ]
            ),
          ),

          Container(
            height: 120,
            margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 4.0),
            padding: EdgeInsets.fromLTRB(0.0, 16.0, 0.0, 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: cardColor, width: 2),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Image.asset("svg/topdoc.png", width: 100),
                title: Text('Dr. Ruth Ndanu'),
                subtitle: Text('General Practitioner'),
              ),
            ],
          ),
          ),
          
        ],
      ),

    );

  }
  
  _top(){
    return Container(
      height: 90,
      padding: new EdgeInsets.all(8.0),
      child: new Center(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: 80.0,
              child: new ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                    new Card(
                      child: new Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: new EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 2.0),
                        child: new Column(
                          children: <Widget>[
                            Row(
                            
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                
                                children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/delivery.svg", color: Colors.black),
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: <Widget>[
                                  new Text('Free',
                                  style: TextStyle(fontWeight: FontWeight.bold , fontSize:16.0, color: Color(0xFFFC670C))),
                                  new Text('Delivery',
                                  style: TextStyle(fontSize:16.0, color: Colors.white)),
                                  new Text('Order Now!',
                                  style: TextStyle(fontSize:16.0, color: Colors.white)),
                                  ],
                                ),
                                
                                
                              ]
                              ),
                              ],
                          ),
                          ],
                        ),
                      ),
                    ),
                    new Card(
                      child: new Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: new EdgeInsets.fromLTRB(16.0, 4.0, 16.0, 2.0),
                        child: new Column(
                          children: <Widget>[
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: SvgPicture.asset("svg/mask.svg", color: cardColor),
                                ),
                                SizedBox(width: 10.0),
                                Column(
                                  children: <Widget>[
                                  new Text('Free',
                                  style: TextStyle(fontWeight: FontWeight.bold , fontSize:16.0, color: Color(0xFFFC670C))),
                                  new Text('Delivery',
                                  style: TextStyle(fontSize:16.0, color: Colors.white)),
                                  new Text('Order Now!',
                                  style: TextStyle(fontSize:16.0, color: Colors.white)),
                                  ],
                                ),
                              ]
                              ),
                              ],
                          ),
                          ],
                        ),
                      ),
                    ),
                    new Card(
                      child: new Container(
                        width: 300.0,
                        decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: new EdgeInsets.all(6.0),
                        child: new Column(
                          children: <Widget>[
                            Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(children: <Widget>[
                                Container(
                                  padding: new EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Icon(Icons.local_hospital, size: 40),
                                ),
                                SizedBox(width: 10.0),
                                
                                Column(
                                  children: <Widget>[
                                  new Text('Free',
                                  style: TextStyle(fontWeight: FontWeight.bold , fontSize:16.0, color: Color(0xFFFC670C))),
                                  new Text('Delivery',
                                  style: TextStyle(fontSize:16.0, color: Colors.white)),
                                  new Text('Order Now!',
                                  style: TextStyle(fontSize:16.0, color: Colors.white)),
                                  ],
                                ),
                              ]
                              ),
                              ],
                          ),
                          ],
                        ),
                      ),
                    ),
                ]
              ),
            ),
          ],
        ),
      ),

    );

  }
  
}