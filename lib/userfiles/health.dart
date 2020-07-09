import 'package:flutter/material.dart';

ThemeData userTheme() {
  final ThemeData base = ThemeData();
  return base.copyWith(
    hintColor: Colors.black,
    primaryColor: Colors.black,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.black,
      ),
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
      ),
    ),
  );
}

class HealthPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHealthPage(title: 'Verify Account'),
    );
  }
  
}

class MyHealthPage extends StatefulWidget {
  MyHealthPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHealthPageState createState() => _MyHealthPageState();

}

class _MyHealthPageState extends State<MyHealthPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', color: Color(0xFF00284B));
  final cardColor = Color(0xFF003B5B);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: ListView(
        children: <Widget>[
          
          Container(
            margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 4.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: cardColor, width: 1),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Health Profile"),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              Padding(
              padding:EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child:Container(
              height:1.0,
              color:Colors.black,),),
              new InkWell(
                onTap: () {},
                child: new Theme(
                data: userTheme(),
                  child: TextField(
                      style: style,
                      decoration: InputDecoration(
                        labelText: 'Height:',
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                )
              ),
              new InkWell(
                onTap: () {},
                child: new Theme(
                data: userTheme(),
                  child: TextField(
                      style: style,
                      decoration: InputDecoration(
                        labelText: 'Weight:',
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                )
              ),
              new InkWell(
                onTap: () {},
                child: new Theme(
                data: userTheme(),
                  child: TextField(
                      style: style,
                      decoration: InputDecoration(
                        labelText: 'Blood Type:',
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                )
              ),
            ],
          ),
          ),
          
          Container(
            margin: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 4.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              border: Border.all(color: cardColor, width: 1),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("Medical Details"),
                  Padding(padding:EdgeInsets.all(8.0)),
                ],
              ),
              Padding(
              padding:EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child:Container(
              height:1.0,
              color:Colors.black,),),
              new InkWell(
                onTap: () {},
                child: new Theme(
                data: userTheme(),
                  child: TextField(
                      style: style,
                      decoration: InputDecoration(
                        labelText: 'Allergies:',
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                )
              ),
              new InkWell(
                onTap: () {},
                child: new Theme(
                data: userTheme(),
                  child: TextField(
                      style: style,
                      decoration: InputDecoration(
                        labelText: 'Medication:',
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                )
              ),
              new InkWell(
                onTap: () {},
                child: new Theme(
                data: userTheme(),
                  child: TextField(
                      style: style,
                      decoration: InputDecoration(
                        labelText: 'Surgeries:',
                        suffixIcon: Icon(Icons.arrow_forward_ios)
                      ),
                    ),
                )
              ),
            ],
          ),
          ),
          
        ],
      ),

    );

  }
  
}