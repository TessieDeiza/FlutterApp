import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:afyasasa/dashboard.dart';

class VerifyUser extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyVerifyPage(title: 'Verify Account'),
    );
  }
  
}

class MyVerifyPage extends StatefulWidget {
  MyVerifyPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyVerifyPageState createState() => _MyVerifyPageState();
}

class _MyVerifyPageState extends State<MyVerifyPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

      @override
      Widget build(BuildContext context) {

        // final codeField = TextField(
        //   keyboardType: TextInputType.number,
        //   inputFormatters: <TextInputFormatter>[
        //     WhitelistingTextInputFormatter.digitsOnly,
        //     new LengthLimitingTextInputFormatter(4)
        //   ],
        //   textAlign: TextAlign.center,
        //   obscureText: false,
        //   style: style,
        //   decoration: InputDecoration(
        //       contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              
        //       hintText: "Verification Code",
        //       border:
        //           OutlineInputBorder(borderRadius: BorderRadius.circular(19.0)
        //        )),
        // );

        final codeField = new InkWell(
              onTap: () {},
              child: new Theme(
                data: new ThemeData(
                  hintColor: Colors.black,
                  primaryColor: Colors.black,
                ),
                child: new TextField(
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly,
                    new LengthLimitingTextInputFormatter(4)
                  ],
                  textAlign: TextAlign.center,
                  style: style,
                  decoration: new InputDecoration(
                      border:
                          OutlineInputBorder(borderRadius: BorderRadius.circular(19.0)
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: '__ __ __ __',
                      labelText: 'Verification Code',
                      ),
                )
              )
            );

        
        final verifyButton = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(19.0),
          color: Color(0xFF000000),
          child: MaterialButton(
            height: 2,
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>NavBar()));
            },
            child: Text("Verify",
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
                    SizedBox(height: 35.0),
                    codeField,
                    SizedBox(
                      height: 35.0,
                    ),
                    verifyButton,
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