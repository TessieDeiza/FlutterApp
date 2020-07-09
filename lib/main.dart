import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:afyasasa/verify_user.dart';

void main() {
  runApp(MyApp());
}

ThemeData buildTheme() {
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
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: buildTheme(),
      home: new MyHomePage(),
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
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

      @override
      Widget build(BuildContext context) {

        String dropdownValue = 'Kenya';

        final countryField = Container(width: 400.0,
          height: 54.0,
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19.0),
            border: Border.all(color: Colors.grey, width: 2)),
            child: DropdownButton<String>(           
            icon: Icon(Icons.arrow_right),
            style: new TextStyle(
              color: Colors.black,
              fontFamily: 'Montserrat', 
              fontSize: 20.0,
            ),
            underline: Container(
            color: Colors.white,
            ),
            hint: Text("Kenya"),
            items: <String>['Kenya'].map((String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
                
              );
            }).toList(),
            onChanged: (_) {},
        ),
        );

        // final countryField = DropdownButton<String>(
        //   value: dropdownValue,
        //   icon: Icon(Icons.arrow_right),
        //   iconSize: 24,
        //   elevation: 16,
        //   style: style,
        //   underline: Container(
        //     height: 2,
        //     color: Colors.deepPurpleAccent,
        //   ),
        //   onChanged: (String newValue) {
        //     setState(() {
        //       dropdownValue = newValue;
        //     });
        //   },
        //   items: <String>['Kenya']
        //       .map<DropdownMenuItem<String>>((String value) {
        //     return DropdownMenuItem<String>(
        //       value: value,
        //       child: Text(value),
        //     );
        //   }).toList(),
        // );

        final phoneField = new InkWell(
              onTap: () {},
              child: new Theme(
                data: new ThemeData(
                  hintColor: Colors.black,
                  primaryColor: Colors.black,
                ),
                child: new TextField(
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[WhitelistingTextInputFormatter.digitsOnly,
                new LengthLimitingTextInputFormatter(9)],
                obscureText: false,
                style: style,
                decoration: InputDecoration(
                    prefixText: '+ 254 ',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    //hintText: "Enter your mobile number",
                    labelText: 'Enter your mobile number',
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(19.0)
                    )),
              )
              )
            );

        
        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(19.0),
          color: Color(0xFF000000),
          child: MaterialButton(
            height: 2,
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>VerifyUser()));
            },
            child: Text("Join",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        );

        return Scaffold(
          body: Center(
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100.0,
                      child: Image.asset(
                        "assets/splash.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 35.0),
                    countryField,
                    SizedBox(height: 35.0),
                    phoneField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          
        );
      }
}