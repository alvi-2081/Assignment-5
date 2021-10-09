import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        // application has a blue toolbar. Then, without quitting the app, try
    return MaterialApp(
      home: Scaffold( 
        body: 
        Container(
        decoration: BoxDecoration( 
          image: DecorationImage(
            image: AssetImage("lib/img/back.jpg"),
            fit: BoxFit.cover
          ),
        ),
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,
          
        children: [
          Container(
            height: 100,
            width: 100,
            child: Image.asset("lib/img/logo.png")),
            
            SizedBox(height: 50.0),
            
            Center(
              child: Container(
                width: 280, 
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(fontSize: 15)
                    )
                  )
              ),
            ),
                
            SizedBox(height: 25.0),
                
            Container(
                width: 280, child: const TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 15)
                  ),
                )),
            SizedBox(height: 25.0,),
            ButtonTheme(height: 50,
              disabledColor: Colors.transparent, 
              child: RaisedButton(
                disabledElevation: 4.0,
                onPressed: null,
                child: Text("Login", style: TextStyle(fontSize: 20, color: Colors.grey)),
              ),
            ),
          
          SizedBox(height: 60.0,),
          Text("New user? Sign up here")
        ],
        ),
        ),
      ),
      );
}
}